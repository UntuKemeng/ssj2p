.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private final mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 121
    const-string v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v0, Landroid/widget/TextClock$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 156
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v0, Landroid/widget/TextClock$3;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$3;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 187
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    new-instance v1, Landroid/widget/TextClock$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 156
    new-instance v1, Landroid/widget/TextClock$2;

    invoke-direct {v1, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v1, Landroid/widget/TextClock$3;

    invoke-direct {v1, p0}, Landroid/widget/TextClock$3;-><init>(Landroid/widget/TextClock;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 224
    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 227
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 229
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 235
    return-void

    .line 231
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 510
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    .end local p2    # "c":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .restart local p2    # "c":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, p1

    goto :goto_0

    :cond_1
    move-object p2, p0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/TextClock;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextClock;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TextClock;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextClock;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TextClock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextClock;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextClock;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextClock;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TextClock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextClock;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 26
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 612
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 613
    .local v5, "adjustPrimaryCalendarStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 614
    .local v4, "adjustPrimaryCalendarEnd":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 615
    .local v7, "adjustSecondaryCalendarStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 617
    .local v6, "adjustSecondaryCalendarEnd":Ljava/util/Calendar;
    const/16 v21, 0x7ed

    const/16 v22, 0x2

    const/16 v23, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 618
    const/16 v21, 0x7ee

    const/16 v22, 0x2

    const/16 v23, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 619
    const/16 v21, 0x7f1

    const/16 v22, 0x2

    const/16 v23, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 620
    const/16 v21, 0x7f2

    const/16 v22, 0x2

    const/16 v23, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 622
    const/4 v11, 0x0

    .line 623
    .local v11, "isFakeCalendar":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 625
    :cond_1
    const/16 v21, 0x5

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 626
    const/4 v11, 0x1

    .line 628
    :cond_2
    new-instance v16, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 630
    .local v16, "today":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getYear()I

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x76c

    move/from16 v19, v0

    .line 631
    .local v19, "todayYear":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getMonth()I

    move-result v21

    add-int/lit8 v18, v21, 0x1

    .line 632
    .local v18, "todayMonth":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getDate()I

    move-result v17

    .line 634
    .local v17, "todayDate":I
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v8, v0, [I

    .line 635
    .local v8, "cal1":[I
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v9, v0, [I

    .line 637
    .local v9, "cal2":[I
    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v8, v21

    .line 638
    const/16 v21, 0x1

    const/16 v22, 0x1f

    aput v22, v8, v21

    .line 639
    const/16 v21, 0x2

    const/16 v22, 0x3b

    aput v22, v8, v21

    .line 640
    const/16 v21, 0x3

    const/16 v22, 0x5a

    aput v22, v8, v21

    .line 641
    const/16 v21, 0x4

    const/16 v22, 0x78

    aput v22, v8, v21

    .line 642
    const/16 v21, 0x5

    const/16 v22, 0x97

    aput v22, v8, v21

    .line 643
    const/16 v21, 0x6

    const/16 v22, 0xb5

    aput v22, v8, v21

    .line 644
    const/16 v21, 0x7

    const/16 v22, 0xd4

    aput v22, v8, v21

    .line 645
    const/16 v21, 0x8

    const/16 v22, 0xf3

    aput v22, v8, v21

    .line 646
    const/16 v21, 0x9

    const/16 v22, 0x111

    aput v22, v8, v21

    .line 647
    const/16 v21, 0xa

    const/16 v22, 0x130

    aput v22, v8, v21

    .line 648
    const/16 v21, 0xb

    const/16 v22, 0x14e

    aput v22, v8, v21

    .line 650
    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v9, v21

    .line 651
    const/16 v21, 0x1

    const/16 v22, 0x1f

    aput v22, v9, v21

    .line 652
    const/16 v21, 0x2

    const/16 v22, 0x3c

    aput v22, v9, v21

    .line 653
    const/16 v21, 0x3

    const/16 v22, 0x5b

    aput v22, v9, v21

    .line 654
    const/16 v21, 0x4

    const/16 v22, 0x79

    aput v22, v9, v21

    .line 655
    const/16 v21, 0x5

    const/16 v22, 0x98

    aput v22, v9, v21

    .line 656
    const/16 v21, 0x6

    const/16 v22, 0xb6

    aput v22, v9, v21

    .line 657
    const/16 v21, 0x7

    const/16 v22, 0xd5

    aput v22, v9, v21

    .line 658
    const/16 v21, 0x8

    const/16 v22, 0xf4

    aput v22, v9, v21

    .line 659
    const/16 v21, 0x9

    const/16 v22, 0x112

    aput v22, v9, v21

    .line 660
    const/16 v21, 0xa

    const/16 v22, 0x131

    aput v22, v9, v21

    .line 661
    const/16 v21, 0xb

    const/16 v22, 0x14f

    aput v22, v9, v21

    .line 663
    rem-int/lit8 v21, v19, 0x4

    if-eqz v21, :cond_9

    .line 664
    add-int/lit8 v21, v18, -0x1

    aget v21, v8, v21

    add-int v10, v21, v17

    .line 666
    .local v10, "date":I
    const/16 v21, 0x4f

    move/from16 v0, v21

    if-le v10, v0, :cond_7

    .line 667
    add-int/lit8 v10, v10, -0x4f

    .line 668
    const/16 v21, 0xba

    move/from16 v0, v21

    if-gt v10, v0, :cond_6

    .line 669
    rem-int/lit8 v21, v10, 0x1f

    packed-switch v21, :pswitch_data_0

    .line 675
    div-int/lit8 v21, v10, 0x1f

    add-int/lit8 v14, v21, 0x1

    .line 676
    .local v14, "month":I
    rem-int/lit8 v10, v10, 0x1f

    .line 679
    :goto_0
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    .line 773
    .local v20, "year":I
    :goto_1
    if-nez v11, :cond_4

    .line 774
    const/16 v21, 0x7ee

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x7f2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v21, 0x14

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 775
    add-int/lit8 v10, v10, 0x1

    .line 779
    :cond_4
    const-string v15, ""

    .line 780
    .local v15, "monthStr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 782
    .local v12, "isLanguageEnglish":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "eng"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 783
    const/4 v12, 0x1

    .line 786
    :cond_5
    packed-switch v14, :pswitch_data_1

    .line 824
    :goto_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 671
    .end local v12    # "isLanguageEnglish":Z
    .end local v14    # "month":I
    .end local v15    # "monthStr":Ljava/lang/String;
    .end local v20    # "year":I
    :pswitch_0
    div-int/lit8 v14, v10, 0x1f

    .line 672
    .restart local v14    # "month":I
    const/16 v10, 0x1f

    .line 673
    goto/16 :goto_0

    .line 681
    .end local v14    # "month":I
    :cond_6
    add-int/lit16 v10, v10, -0xba

    .line 683
    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_2

    .line 689
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x7

    .line 690
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1e

    .line 693
    :goto_3
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 685
    .end local v14    # "month":I
    .end local v20    # "year":I
    :pswitch_1
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x6

    .line 686
    .restart local v14    # "month":I
    const/16 v10, 0x1e

    .line 687
    goto :goto_3

    .line 696
    .end local v14    # "month":I
    :cond_7
    const/16 v21, 0x7cc

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    rem-int/lit8 v21, v19, 0x4

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 697
    const/16 v13, 0xb

    .line 701
    .local v13, "ld":I
    :goto_4
    add-int/2addr v10, v13

    .line 703
    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_3

    .line 709
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0xa

    .line 710
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1e

    .line 713
    :goto_5
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26e

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 699
    .end local v13    # "ld":I
    .end local v14    # "month":I
    .end local v20    # "year":I
    :cond_8
    const/16 v13, 0xa

    .restart local v13    # "ld":I
    goto :goto_4

    .line 705
    :pswitch_2
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x9

    .line 706
    .restart local v14    # "month":I
    const/16 v10, 0x1e

    .line 707
    goto :goto_5

    .line 716
    .end local v10    # "date":I
    .end local v13    # "ld":I
    .end local v14    # "month":I
    :cond_9
    add-int/lit8 v21, v18, -0x1

    aget v21, v9, v21

    add-int v10, v21, v17

    .line 718
    .restart local v10    # "date":I
    const/16 v21, 0x7cc

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 719
    const/16 v13, 0x4f

    .line 723
    .restart local v13    # "ld":I
    :goto_6
    if-le v10, v13, :cond_c

    .line 724
    sub-int/2addr v10, v13

    .line 726
    const/16 v21, 0xba

    move/from16 v0, v21

    if-gt v10, v0, :cond_b

    .line 727
    rem-int/lit8 v21, v10, 0x1f

    packed-switch v21, :pswitch_data_4

    .line 733
    div-int/lit8 v21, v10, 0x1f

    add-int/lit8 v14, v21, 0x1

    .line 734
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1f

    .line 737
    :goto_7
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 721
    .end local v13    # "ld":I
    .end local v14    # "month":I
    .end local v20    # "year":I
    :cond_a
    const/16 v13, 0x50

    .restart local v13    # "ld":I
    goto :goto_6

    .line 729
    :pswitch_3
    div-int/lit8 v14, v10, 0x1f

    .line 730
    .restart local v14    # "month":I
    const/16 v10, 0x1f

    .line 731
    goto :goto_7

    .line 739
    .end local v14    # "month":I
    :cond_b
    add-int/lit16 v10, v10, -0xba

    .line 741
    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_5

    .line 747
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x7

    .line 748
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1e

    .line 751
    :goto_8
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 743
    .end local v14    # "month":I
    .end local v20    # "year":I
    :pswitch_4
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x6

    .line 744
    .restart local v14    # "month":I
    const/16 v10, 0x1e

    .line 745
    goto :goto_8

    .line 756
    .end local v14    # "month":I
    :cond_c
    add-int/lit8 v10, v10, 0xa

    .line 758
    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_6

    .line 764
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0xa

    .line 765
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1e

    .line 768
    :goto_9
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26e

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 760
    .end local v14    # "month":I
    .end local v20    # "year":I
    :pswitch_5
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x9

    .line 761
    .restart local v14    # "month":I
    const/16 v10, 0x1e

    .line 762
    goto :goto_9

    .line 788
    .end local v13    # "ld":I
    .restart local v12    # "isLanguageEnglish":Z
    .restart local v15    # "monthStr":Ljava/lang/String;
    .restart local v20    # "year":I
    :pswitch_6
    if-eqz v12, :cond_d

    const-string v15, "Farvardin"

    .line 789
    :goto_a
    goto/16 :goto_2

    .line 788
    :cond_d
    const-string/jumbo v15, "\u0641\u0631\u0648\u0631\u062f\u064a\u0646"

    goto :goto_a

    .line 791
    :pswitch_7
    if-eqz v12, :cond_e

    const-string v15, "Ordibehesht"

    .line 792
    :goto_b
    goto/16 :goto_2

    .line 791
    :cond_e
    const-string/jumbo v15, "\u0627\u0631\u062f\u064a\u0628\u0647\u0634\u062a"

    goto :goto_b

    .line 794
    :pswitch_8
    if-eqz v12, :cond_f

    const-string v15, "Khordad"

    .line 795
    :goto_c
    goto/16 :goto_2

    .line 794
    :cond_f
    const-string/jumbo v15, "\u062e\u0631\u062f\u0627\u062f"

    goto :goto_c

    .line 797
    :pswitch_9
    if-eqz v12, :cond_10

    const-string v15, "Tir"

    .line 798
    :goto_d
    goto/16 :goto_2

    .line 797
    :cond_10
    const-string/jumbo v15, "\u062a\u064a\u0631"

    goto :goto_d

    .line 800
    :pswitch_a
    if-eqz v12, :cond_11

    const-string v15, "Mordad"

    .line 801
    :goto_e
    goto/16 :goto_2

    .line 800
    :cond_11
    const-string/jumbo v15, "\u0645\u0631\u062f\u0627\u062f"

    goto :goto_e

    .line 803
    :pswitch_b
    if-eqz v12, :cond_12

    const-string v15, "Shahrivar"

    .line 804
    :goto_f
    goto/16 :goto_2

    .line 803
    :cond_12
    const-string/jumbo v15, "\u0634\u0647\u0631\u064a\u0648\u0631"

    goto :goto_f

    .line 806
    :pswitch_c
    if-eqz v12, :cond_13

    const-string v15, "Mehr"

    .line 807
    :goto_10
    goto/16 :goto_2

    .line 806
    :cond_13
    const-string/jumbo v15, "\u0645\u0647\u0631"

    goto :goto_10

    .line 809
    :pswitch_d
    if-eqz v12, :cond_14

    const-string v15, "Aban"

    .line 810
    :goto_11
    goto/16 :goto_2

    .line 809
    :cond_14
    const-string/jumbo v15, "\u0622\u0628\u0627\u0646"

    goto :goto_11

    .line 812
    :pswitch_e
    if-eqz v12, :cond_15

    const-string v15, "Azar"

    .line 813
    :goto_12
    goto/16 :goto_2

    .line 812
    :cond_15
    const-string/jumbo v15, "\u0622\u0630\u0631"

    goto :goto_12

    .line 815
    :pswitch_f
    if-eqz v12, :cond_16

    const-string v15, "Dey"

    .line 816
    :goto_13
    goto/16 :goto_2

    .line 815
    :cond_16
    const-string/jumbo v15, "\u062f\u06cc"

    goto :goto_13

    .line 818
    :pswitch_10
    if-eqz v12, :cond_17

    const-string v15, "Bahman"

    .line 819
    :goto_14
    goto/16 :goto_2

    .line 818
    :cond_17
    const-string/jumbo v15, "\u0628\u0647\u0645\u0646"

    goto :goto_14

    .line 821
    :pswitch_11
    if-eqz v12, :cond_18

    const-string v15, "Esfand"

    :goto_15
    goto/16 :goto_2

    :cond_18
    const-string/jumbo v15, "\u0627\u0633\u0641\u0646\u062f"

    goto :goto_15

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 786
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 683
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 703
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 727
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 741
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    .line 758
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method private chooseFormat()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->chooseFormat(Z)V

    .line 465
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 6
    .param p1, "handleTicker"    # Z

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 487
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 489
    .local v2, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1

    .line 490
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 491
    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 497
    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 498
    .local v1, "hadSeconds":Z
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 500
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Landroid/widget/TextClock;->mAttached:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eq v1, v3, :cond_0

    .line 501
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    :cond_0
    :goto_1
    return-void

    .line 493
    .end local v1    # "hadSeconds":Z
    :cond_1
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 494
    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 502
    .restart local v1    # "hadSeconds":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 240
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 241
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 243
    :cond_1
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 244
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 248
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextClock;->chooseFormat(Z)V

    .line 251
    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 578
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 581
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "per"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    .line 587
    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 588
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 558
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v1, :cond_0

    .line 560
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 548
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 555
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 574
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 575
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 570
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 593
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 595
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 596
    .local v0, "s":Ljava/lang/CharSequence;
    const-string v3, "format12Hour"

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 599
    const-string v3, "format24Hour"

    if-nez v0, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v1, "format"

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v1, "hasSeconds"

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 602
    return-void

    .line 596
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 599
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 600
    :cond_2
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    .line 416
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 515
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 517
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    .line 520
    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    .line 521
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 523
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 525
    iget-boolean v0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 537
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    .line 539
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 541
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    .line 545
    :cond_0
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 314
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    .line 316
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 317
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 318
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 372
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    .line 374
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 375
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 376
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 303
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 305
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 306
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 307
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 361
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 363
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 364
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 365
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    .line 388
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 389
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 390
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 391
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 392
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 451
    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    .line 453
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 455
    return-void
.end method

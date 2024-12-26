.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatePickerSpinnerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;,
        Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final TW_DEBUG:Z

.field static final productName:Ljava/lang/String;


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYDDMM:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private isMonthJan:Z

.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDayDecrementButton:Landroid/widget/ImageButton;

.field private mDayIncrementButton:Landroid/widget/ImageButton;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mIsEnabled:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthDecrementButton:Landroid/widget/ImageButton;

.field mMonthEdit:Landroid/widget/EditText;

.field private mMonthIncrementButton:Landroid/widget/ImageButton;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mWBOriginSpninnerHeight:I

.field private mYearDecrementButton:Landroid/widget/ImageButton;

.field private mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mYearIncrementButton:Landroid/widget/ImageButton;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 635
    const-string/jumbo v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->productName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 25
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 644
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 607
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v22, "MM/dd/yyyy"

    invoke-direct/range {v21 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 619
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 638
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    .line 639
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    .line 1550
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    .line 1552
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isMonthJan:Z

    .line 1553
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->PICKER_DAY:I

    .line 1554
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->PICKER_MONTH:I

    .line 1555
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->PICKER_YEAR:I

    .line 1557
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->FORMAT_MMDDYYYY:I

    .line 1558
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->FORMAT_DDMMYYYY:I

    .line 1559
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->FORMAT_YYYYMMDD:I

    .line 1560
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->FORMAT_YYYYDDMM:I

    .line 1566
    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$6;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1576
    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$7;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 646
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 647
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 650
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 652
    sget-object v21, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 654
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v21, 0x6

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 656
    .local v18, "spinnersShown":Z
    const/16 v21, 0x7

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 658
    .local v8, "calendarViewShown":Z
    const/16 v21, 0x1

    const/16 v22, 0x76c

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 660
    .local v19, "startYear":I
    const/16 v21, 0x2

    const/16 v22, 0x834

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 661
    .local v9, "endYear":I
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 662
    .local v15, "minDate":Ljava/lang/String;
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 663
    .local v14, "maxDate":Ljava/lang/String;
    const/16 v21, 0x14

    const v22, 0x1090049

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 665
    .local v12, "layoutResourceId":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 667
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 668
    .local v17, "outValue":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x11600bd

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 669
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 670
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    .line 673
    :cond_0
    const-string v21, "layout_inflater"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 675
    .local v10, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 677
    new-instance v16, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 730
    .local v16, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x102038e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x1020392

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CalendarView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x1020390

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/NumberPicker;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x64

    invoke-virtual/range {v21 .. v23}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const v22, 0x102044d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x102038f

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/NumberPicker;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const v22, 0x102044d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 757
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 771
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xc8

    invoke-virtual/range {v21 .. v23}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const v22, 0x1020391

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/NumberPicker;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x64

    invoke-virtual/range {v21 .. v23}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const v22, 0x102044d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 783
    .local v11, "language":Ljava/lang/String;
    const-string v21, "ar"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v21, "fa"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string/jumbo v21, "ur"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 784
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isPhone()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-virtual/range {v21 .. v23}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-virtual/range {v21 .. v23}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-virtual/range {v21 .. v23}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 792
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 795
    new-instance v6, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$3;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 806
    .local v6, "TouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayIncrementButton:Landroid/widget/ImageButton;

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthIncrementButton:Landroid/widget/ImageButton;

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearIncrementButton:Landroid/widget/ImageButton;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayDecrementButton:Landroid/widget/ImageButton;

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthDecrementButton:Landroid/widget/ImageButton;

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearDecrementButton:Landroid/widget/ImageButton;

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 815
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 817
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 819
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDayDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 821
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 823
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 829
    :cond_8
    if-nez v18, :cond_e

    if-nez v8, :cond_e

    .line 830
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 837
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->clear()V

    .line 838
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 845
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setMinDate(J)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->clear()V

    .line 849
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    const/16 v23, 0x1f

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 856
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Ljava/util/Calendar;->get(I)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 864
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->reorderSpinners()V

    .line 867
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setContentDescriptions()V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v21

    if-nez v21, :cond_b

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 875
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 876
    new-instance v20, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 877
    .local v20, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    const/16 v21, 0x12

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 878
    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V

    .line 907
    new-instance v21, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$5;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setWritingBuddyEnabled(Z)V

    .line 949
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 952
    .local v13, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 953
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    .line 958
    .end local v13    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_c
    return-void

    .line 764
    .end local v6    # "TouchListener":Landroid/view/View$OnTouchListener;
    .end local v11    # "language":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/EditText;->setInputType(I)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    goto/16 :goto_0

    .line 832
    .restart local v6    # "TouchListener":Landroid/view/View$OnTouchListener;
    .restart local v11    # "language":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 833
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    goto/16 :goto_1

    .line 843
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_2

    .line 854
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    const/16 v23, 0x1f

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;CLjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # C
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getValueFromWBResult(CLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-direct {p0, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2102(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isMonthJan:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/CalendarView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 575
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1213
    if-nez p1, :cond_0

    .line 1214
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1219
    :goto_0
    return-object v2

    .line 1216
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1217
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1218
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getValueFromWBResult(CLjava/lang/String;)I
    .locals 8
    .param p1, "type"    # C
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1507
    const/4 v3, -0x1

    .line 1508
    .local v3, "result":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v4, v3

    .line 1540
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 1511
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1512
    .local v5, "valueString":Ljava/lang/String;
    const/16 v6, 0x64

    if-ne p1, v6, :cond_3

    .line 1514
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_2
    :goto_1
    move v4, v3

    .line 1540
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 1515
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_0
    move-exception v2

    .line 1516
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 1517
    goto :goto_1

    .line 1518
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    const/16 v6, 0x4d

    if-ne p1, v6, :cond_7

    .line 1519
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    if-nez v6, :cond_5

    .line 1521
    :cond_4
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_1

    .line 1522
    :catch_1
    move-exception v2

    .line 1523
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .line 1524
    goto :goto_1

    .line 1526
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    array-length v0, v6

    .line 1527
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 1528
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1529
    add-int/lit8 v3, v1, 0x1

    .line 1527
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1533
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_7
    const/16 v6, 0x79

    if-ne p1, v6, :cond_2

    .line 1535
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_1

    .line 1536
    :catch_2
    move-exception v2

    .line 1537
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 1288
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhone()Z
    .locals 2

    .prologue
    .line 964
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "characteristics":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    const/4 v1, 0x0

    .line 968
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isWritingBuddyFeatureEnabled()Z
    .locals 1

    .prologue
    .line 1831
    const/4 v0, 0x0

    return v0
.end method

.method private notifyDateChanged()V
    .locals 5

    .prologue
    .line 1416
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 1417
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 1421
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 1279
    :try_start_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    const/4 v1, 0x1

    .line 1283
    :goto_0
    return v1

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "e":Ljava/text/ParseException;
    # getter for: Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/DatePicker;->access$1900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 12

    .prologue
    const/16 v11, 0x79

    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1229
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "yyyyMMMdd"

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1233
    .local v4, "pattern":Ljava/lang/String;
    invoke-static {v4}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v3

    .line 1234
    .local v3, "order":[C
    array-length v5, v3

    .line 1235
    .local v5, "spinnerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1236
    aget-char v6, v3, v2

    sparse-switch v6, :sswitch_data_0

    .line 1250
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1238
    :sswitch_0
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1239
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v6, v5, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 1235
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1242
    :sswitch_1
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1243
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v6, v5, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 1246
    :sswitch_2
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1247
    iget-object v6, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v6, v5, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 1258
    :cond_0
    aget-char v0, v3, v8

    .line 1259
    .local v0, "c":C
    aget-char v1, v3, v9

    .line 1260
    .local v1, "c2":C
    const/16 v6, 0x4d

    if-ne v0, v6, :cond_2

    .line 1261
    invoke-direct {p0, v8}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setTextWatcher(I)V

    .line 1269
    :cond_1
    :goto_2
    return-void

    .line 1262
    :cond_2
    if-ne v0, v10, :cond_3

    .line 1263
    invoke-direct {p0, v9}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setTextWatcher(I)V

    goto :goto_2

    .line 1264
    :cond_3
    if-ne v0, v11, :cond_4

    if-ne v1, v10, :cond_4

    .line 1265
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setTextWatcher(I)V

    goto :goto_2

    .line 1266
    :cond_4
    if-ne v0, v11, :cond_1

    .line 1267
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setTextWatcher(I)V

    goto :goto_2

    .line 1236
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x102044e

    const v2, 0x102044c

    .line 1452
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040484

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1454
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040485

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1457
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040482

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1459
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040483

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1462
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040486

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1464
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040487

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 1466
    return-void
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1295
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 4
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    const/high16 v3, 0x2000000

    .line 1435
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 1436
    const/4 v0, 0x5

    .line 1438
    .local v0, "imeOptions":I
    or-int/2addr v0, v3

    .line 1446
    :goto_0
    const v2, 0x102044d

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1447
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1448
    return-void

    .line 1441
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .line 1443
    .restart local v0    # "imeOptions":I
    or-int/2addr v0, v3

    goto :goto_0
.end method

.method private setTextWatcher(I)V
    .locals 7
    .param p1, "format"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "format  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V

    .line 1594
    packed-switch p1, :pswitch_data_0

    .line 1651
    :goto_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1652
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1653
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1654
    return-void

    .line 1596
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1597
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1598
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1599
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v3, v4, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1601
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1605
    :goto_1
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1606
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1607
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 1603
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v4, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 1610
    :pswitch_1
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1611
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1612
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1613
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v3, v4, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1614
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1616
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1620
    :goto_2
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1621
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 1618
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 1624
    :pswitch_2
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1625
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1626
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1627
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1628
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1629
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1630
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1634
    :goto_3
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v3, v3, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1635
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 1632
    :cond_2
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    .line 1638
    :pswitch_3
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1639
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1640
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1641
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1642
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1643
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1644
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v3, v3, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1645
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 1647
    :cond_3
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 1594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 1469
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1470
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1471
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1473
    :cond_0
    return-void
.end method

.method private twLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1682
    return-void
.end method

.method private updateCalendarView()V
    .locals 5

    .prologue
    .line 1407
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 1409
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1481
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1482
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1483
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1486
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1487
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1489
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1492
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1493
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 1495
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1499
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1306
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1311
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1312
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1313
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1314
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1316
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1317
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1318
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1324
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1365
    :goto_1
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1368
    .local v0, "displayedValues":[Ljava/lang/String;
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1369
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1376
    :goto_2
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1377
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1378
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1381
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1383
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1384
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1387
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1388
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1394
    :goto_3
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1396
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1397
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1399
    :cond_2
    return-void

    .line 1320
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1321
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto/16 :goto_0

    .line 1327
    :cond_4
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1332
    :cond_5
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1333
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1334
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1335
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1338
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1339
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1345
    :goto_4
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_1

    .line 1341
    :cond_6
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1342
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_4

    .line 1347
    :cond_7
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1348
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1349
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1350
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1352
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1353
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1354
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1360
    :goto_5
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_1

    .line 1356
    :cond_8
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1357
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_5

    .line 1371
    .restart local v0    # "displayedValues":[Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1390
    :cond_a
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto/16 :goto_3
.end method

.method private usingNumericMonths()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1199
    sget-object v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->productName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->productName:Ljava/lang/String;

    const-string v1, "ks02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    const/4 v0, 0x1

    .line 1203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1154
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1155
    const/4 v0, 0x1

    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 1064
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1065
    .local v0, "maxDate":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1066
    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 1034
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1035
    .local v0, "minDate":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1036
    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 974
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    .line 975
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    .line 976
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 977
    iput-object p4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 978
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1086
    iget-boolean v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1135
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 1136
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1160
    const/16 v0, 0x14

    .line 1161
    .local v0, "flags":I
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 1163
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1146
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    .line 1147
    .local v0, "ss":Landroid/widget/DatePicker$SavedState;
    # getter for: Landroid/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1600(Landroid/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Landroid/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1700(Landroid/widget/DatePicker$SavedState;)I

    move-result v2

    # getter for: Landroid/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1800(Landroid/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    .line 1148
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    .line 1149
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 1150
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 6
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1140
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V

    .line 1141
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    .line 1096
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 1099
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1102
    .local v1, "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v2}, Landroid/widget/CalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1103
    .local v0, "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v2}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1104
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    .line 1106
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    .line 1107
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1116
    .end local v0    # "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 1096
    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .line 1110
    .restart local v0    # "calendarLP":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "spinnnerLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    if-eq v2, v3, :cond_0

    .line 1111
    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mWBOriginSpninnerHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1173
    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 1175
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    .line 1176
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    .line 1177
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 1178
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 1180
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 1181
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 1183
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 1187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 1188
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1071
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1072
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1073
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 1074
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 1075
    iput-boolean p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 1078
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setWritingBuddyEnabled(Z)V

    .line 1082
    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 1009
    return-void
.end method

.method public setMaxDate(J)V
    .locals 9
    .param p1, "maxDate"    # J

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 1042
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 1043
    .local v1, "currentTimezone":Ljava/util/TimeZone;
    const-string v3, "America/Sao_Paulo"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1044
    .local v0, "brasilia":Ljava/util/TimeZone;
    const-string v3, "America/Santiago"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 1045
    .local v2, "santiago":Ljava/util/TimeZone;
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1046
    :cond_0
    const-wide/32 v4, 0x4ef6d80

    add-long/2addr p1, v4

    .line 1048
    :cond_1
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1049
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1060
    :goto_0
    return-void

    .line 1053
    :cond_2
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1054
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v3, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 1055
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1056
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1057
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 1059
    :cond_3
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 1018
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1019
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1024
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 1025
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1027
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 1029
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 1125
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1126
    return-void

    .line 1125
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 982
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    :goto_0
    return-void

    .line 985
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    .line 986
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    .line 987
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 988
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V

    goto :goto_0
.end method

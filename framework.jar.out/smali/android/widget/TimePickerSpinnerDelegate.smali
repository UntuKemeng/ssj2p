.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;,
        Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;,
        Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private PICKER_HOUR:I

.field private PICKER_MINUTE:I

.field private TW_DEBUG:Z

.field private final mAmPmButton:Landroid/widget/Button;

.field private mAmPmDecrementButton:Landroid/widget/ImageButton;

.field private mAmPmIncrementButton:Landroid/widget/ImageButton;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDivider:Landroid/widget/TextView;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mHourDecrementButton:Landroid/widget/ImageButton;

.field private mHourFormat:C

.field private mHourIncrementButton:Landroid/widget/ImageButton;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteDecrementButton:Landroid/widget/ImageButton;

.field private mMinuteIncrementButton:Landroid/widget/ImageButton;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 114
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 98
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 932
    new-instance v14, Landroid/widget/TimePickerSpinnerDelegate$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePickerSpinnerDelegate$8;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 947
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->TW_DEBUG:Z

    .line 949
    const/4 v14, 0x3

    new-array v14, v14, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    .line 951
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_HOUR:I

    .line 952
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_MINUTE:I

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 119
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v14, 0xc

    const v15, 0x109011a

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 121
    .local v10, "layoutResourceId":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 124
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v15, 0x1

    invoke-virtual {v9, v10, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 127
    const v14, 0x10204d6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerSpinnerDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerSpinnerDelegate$1;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v15, 0x102044d

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const v15, 0x2000005

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v15, 0x10204d9

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 161
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setDividerText()V

    .line 165
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v15, 0x10204d7

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v15, 0x3b

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerSpinnerDelegate$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerSpinnerDelegate$2;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v15, 0x102044d

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v15, 0x2000006

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 208
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v15, 0x10204d8

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 212
    .local v7, "amPmView":Landroid/view/View;
    instance-of v14, v7, Landroid/widget/Button;

    if-eqz v14, :cond_a

    .line 213
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 214
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v14, v7

    .line 215
    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    new-instance v15, Landroid/widget/TimePickerSpinnerDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerSpinnerDelegate$3;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :goto_0
    new-instance v4, Landroid/widget/TimePickerSpinnerDelegate$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TimePickerSpinnerDelegate$5;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 264
    .local v4, "TouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourIncrementButton:Landroid/widget/ImageButton;

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourDecrementButton:Landroid/widget/ImageButton;

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_1

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 276
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_3

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_4

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    :cond_4
    instance-of v14, v7, Landroid/widget/Button;

    if-nez v14, :cond_5

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v14}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    if-eqz v14, :cond_5

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 298
    const v14, 0x10204d5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 299
    .local v6, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 300
    const/4 v14, 0x0

    invoke-virtual {v6, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 303
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 305
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v12

    .line 306
    .local v12, "startMargin":I
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v8

    .line 307
    .local v8, "endMargin":I
    if-eq v12, v8, :cond_6

    .line 308
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 309
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 313
    .end local v6    # "amPmParent":Landroid/view/ViewGroup;
    .end local v8    # "endMargin":I
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "startMargin":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 316
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 317
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 318
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v15, 0xb

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(I)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_7

    .line 325
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 329
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setContentDescriptions()V

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v14}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v14

    if-nez v14, :cond_8

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 337
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setTextWatcher()V

    .line 340
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 341
    new-instance v13, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 342
    .local v13, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 343
    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 351
    :goto_1
    new-instance v14, Landroid/widget/TimePickerSpinnerDelegate$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePickerSpinnerDelegate$6;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V

    .line 388
    new-instance v14, Landroid/widget/TimePickerSpinnerDelegate$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePickerSpinnerDelegate$7;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    invoke-virtual {v14, v15}, Landroid/widget/TimePicker;->setWritingBuddyEnabled(Z)V

    .line 459
    .end local v13    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_9
    return-void

    .line 225
    .end local v4    # "TouchListener":Landroid/view/View$OnTouchListener;
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    move-object v14, v7

    .line 226
    check-cast v14, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v15, Landroid/widget/TimePickerSpinnerDelegate$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v15, 0x102044d

    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto/16 :goto_0

    .line 345
    .restart local v4    # "TouchListener":Landroid/view/View$OnTouchListener;
    .restart local v13    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v14, :cond_c

    .line 346
    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto/16 :goto_1

    .line 348
    :cond_c
    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/widget/TimePickerSpinnerDelegate;)C
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    return v0
.end method

.method static synthetic access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->TW_DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/TimePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TimePickerSpinnerDelegate;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 906
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 907
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 909
    .local v0, "d":Llibcore/icu/LocaleData;
    invoke-static {}, Landroid/widget/TimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 910
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    .line 911
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 917
    :goto_0
    return-object v1

    .line 914
    :cond_0
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    :goto_1
    aput-object v2, v1, v3

    .line 915
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_2

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    :goto_2
    aput-object v2, v1, v4

    goto :goto_0

    .line 914
    :cond_1
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_1

    .line 915
    :cond_2
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    goto :goto_2
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 462
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_2

    const-string v5, "Hm"

    :goto_0
    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 465
    .local v4, "lengthPattern":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 466
    const/4 v2, 0x0

    .line 469
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 470
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 471
    .local v1, "c":C
    const/16 v5, 0x48

    if-eq v1, v5, :cond_0

    const/16 v5, 0x68

    if-eq v1, v5, :cond_0

    const/16 v5, 0x4b

    if-eq v1, v5, :cond_0

    const/16 v5, 0x6b

    if-ne v1, v5, :cond_3

    .line 472
    :cond_0
    iput-char v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    .line 473
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v5, :cond_1

    .line 474
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 479
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 462
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourFormat":C
    .end local v3    # "i":I
    .end local v4    # "lengthPattern":I
    :cond_2
    const-string v5, "hm"

    goto :goto_0

    .line 469
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v2    # "hourFormat":C
    .restart local v3    # "i":I
    .restart local v4    # "lengthPattern":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 482
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isMeaLanguage()Z
    .locals 2

    .prologue
    .line 922
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "language":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    :cond_0
    const/4 v1, 0x1

    .line 927
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWritingBuddyFeatureEnabled()Z
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    return v0
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 787
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 788
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 792
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x102044e

    const v2, 0x102044c

    .line 834
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047c

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 836
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047d

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 839
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047e

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 841
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104047f

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 844
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040480

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 847
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040481

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 850
    :cond_0
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 526
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 531
    if-lt p1, v1, :cond_4

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 533
    if-le p1, v1, :cond_2

    .line 534
    add-int/lit8 p1, p1, -0xc

    .line 542
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 544
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 545
    if-eqz p2, :cond_0

    .line 546
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0

    .line 537
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 538
    if-nez p1, :cond_2

    .line 539
    const/16 p1, 0xc

    goto :goto_1
.end method

.method private setDividerText()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 497
    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_1

    const-string v4, "Hm"

    .line 498
    .local v4, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 502
    .local v1, "hourIndex":I
    if-ne v1, v7, :cond_0

    .line 503
    const/16 v5, 0x68

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 505
    :cond_0
    if-ne v1, v7, :cond_2

    .line 507
    const-string v3, ":"

    .line 516
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    return-void

    .line 497
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hourIndex":I
    .end local v3    # "separatorText":Ljava/lang/String;
    .end local v4    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v4, "hm"

    goto :goto_0

    .line 509
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hourIndex":I
    .restart local v4    # "skeleton":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x6d

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 510
    .local v2, "minuteIndex":I
    if-ne v2, v7, :cond_3

    .line 511
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 513
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private setTextWatcher()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 962
    invoke-static {}, Landroid/widget/TimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_HOUR:I

    .line 964
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_MINUTE:I

    .line 966
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_HOUR:I

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    .line 967
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_MINUTE:I

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    .line 969
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_HOUR:I

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_HOUR:I

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/TimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 970
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_MINUTE:I

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;

    iget v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_MINUTE:I

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/TimePickerSpinnerDelegate$TwTextWatcher;-><init>(Landroid/widget/TimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 972
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_HOUR:I

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 973
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->PICKER_MINUTE:I

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;

    invoke-direct {v1, p0}, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 974
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 853
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 854
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 855
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 857
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 756
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 772
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 773
    return-void

    .line 760
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 763
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 764
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 765
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 766
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 763
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 768
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 795
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 798
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 799
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 814
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 815
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 802
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 806
    :cond_1
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 807
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 808
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 810
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 811
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 814
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 725
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 726
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 727
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 731
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 739
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 743
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 747
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 818
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 828
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v1, 0x2000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 830
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 824
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 553
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .line 555
    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 556
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 558
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getTimePickerText()[Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 653
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 654
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 706
    const/4 v0, 0x1

    .line 707
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 708
    or-int/lit16 v0, v0, 0x80

    .line 712
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 713
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 714
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    return-void

    .line 710
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 693
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    .line 694
    .local v0, "ss":Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(I)V

    .line 695
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(I)V

    .line 696
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const v2, 0x2000006

    const v1, 0x2000005

    .line 659
    packed-switch p1, :pswitch_data_0

    .line 666
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 667
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 669
    :goto_0
    return-void

    .line 661
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 662
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 675
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V

    .line 677
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 680
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 683
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 688
    :cond_2
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public setCurrentHour(I)V
    .locals 1
    .param p1, "currentHour"    # I

    .prologue
    .line 521
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 522
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 782
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 783
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 784
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "currentMinute"    # I

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 568
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 622
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 627
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 632
    :goto_0
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 635
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setWritingBuddyEnabled(Z)V

    .line 639
    :cond_1
    return-void

    .line 630
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setIs24HourView(Z)V
    .locals 4
    .param p1, "is24HourView"    # Z

    .prologue
    const/4 v3, 0x0

    .line 578
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v2, p1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v0

    .line 584
    .local v0, "currentHour":I
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 585
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 586
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 588
    invoke-direct {p0, v0, v3}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 589
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 590
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 593
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->isWritingBuddyFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    .line 595
    .local v1, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    if-eqz v1, :cond_0

    .line 596
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_2

    .line 597
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_0

    .line 599
    :cond_2
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v2, :cond_3

    .line 600
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_0

    .line 602
    :cond_3
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 617
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 618
    return-void
.end method

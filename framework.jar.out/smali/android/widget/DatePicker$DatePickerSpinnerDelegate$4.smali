.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 881
    const-string v2, ""

    .line 882
    .local v2, "curDate":Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 883
    .local v3, "day":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 884
    .local v5, "month":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 885
    .local v6, "year":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 886
    .local v1, "cnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_7

    .line 887
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 888
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_4

    .line 886
    :cond_0
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 882
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "cnt":I
    .end local v3    # "day":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "month":Ljava/lang/String;
    .end local v6    # "year":Ljava/lang/String;
    :cond_1
    const-string v3, "01"

    goto :goto_0

    .line 883
    .restart local v3    # "day":Ljava/lang/String;
    :cond_2
    const-string v5, "01"

    goto :goto_1

    .line 884
    .restart local v5    # "month":Ljava/lang/String;
    :cond_3
    const-string v6, "2013"

    goto :goto_2

    .line 891
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "cnt":I
    .restart local v4    # "i":I
    .restart local v6    # "year":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 892
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 900
    :goto_5
    add-int/lit8 v7, v1, -0x1

    if-eq v4, v7, :cond_0

    .line 901
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 893
    :cond_5
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 894
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 895
    :cond_6
    iget-object v7, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 896
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 904
    .end local v0    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

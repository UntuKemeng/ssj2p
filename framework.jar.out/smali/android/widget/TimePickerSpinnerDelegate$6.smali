.class Landroid/widget/TimePickerSpinnerDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const v8, 0x102044d

    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "curTime":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "hour":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$600(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "minute":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v5}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "AM"

    .local v0, "ampm":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$700(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$700(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v5, v5, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v5, v5, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .end local v0    # "ampm":Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v2    # "hour":Ljava/lang/String;
    .end local v3    # "minute":Ljava/lang/String;
    :cond_2
    const-string v2, "00"

    goto/16 :goto_0

    .restart local v2    # "hour":Ljava/lang/String;
    :cond_3
    const-string v3, "00"

    goto :goto_1

    .restart local v0    # "ampm":Ljava/lang/String;
    .restart local v3    # "minute":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$800(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->access$800(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "tv":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    goto :goto_2

    :cond_6
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v5, v5, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/widget/TimePicker;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_3
.end method

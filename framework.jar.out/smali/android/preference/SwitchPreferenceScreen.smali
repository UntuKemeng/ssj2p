.class public Landroid/preference/SwitchPreferenceScreen;
.super Landroid/preference/SwitchPreference;
.source "SwitchPreferenceScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "fragment":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    const-string v2, "SwitchPreferenceScreen"

    const-string v3, "SwitchPreferenceScreen should get fragment property. Fragment property does not exsit in SwitchPreferenceScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    const v2, 0x109015d

    invoke-virtual {p0, v2}, Landroid/preference/SwitchPreferenceScreen;->setLayoutResourceInternal(I)V

    .line 50
    const v2, 0x109015e

    invoke-virtual {p0, v2}, Landroid/preference/SwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/preference/SwitchPreferenceScreen;->setForceRecycleLayout(Z)V

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 106
    .local v0, "action":I
    const/4 v1, 0x0

    .line 108
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 124
    :goto_1
    return v2

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/SwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 112
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/SwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 118
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 124
    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    .line 99
    return-void
.end method

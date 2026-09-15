.class public Landroidx/preference/SwitchPreferenceCompat;
.super Landroidx/preference/TwoStatePreference;
.source "SourceFile"


# instance fields
.field public final s:Lw0/a;

.field public final t:Ljava/lang/CharSequence;

.field public final u:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const v0, 0x7f04049c

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lw0/a;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, v2}, Lw0/a;-><init>(Landroidx/preference/TwoStatePreference;I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->s:Lw0/a;

    .line 14
    .line 15
    sget-object v1, Lw0/q;->l:[I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, p2, v1, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x7

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :cond_0
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->n:Ljava/lang/CharSequence;

    .line 34
    .line 35
    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->m:Z

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p2, 0x6

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :cond_2
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->p:Ljava/lang/CharSequence;

    .line 55
    .line 56
    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->m:Z

    .line 57
    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    .line 61
    .line 62
    .line 63
    :cond_3
    const/16 p2, 0x9

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-nez p2, :cond_4

    .line 70
    .line 71
    const/4 p2, 0x3

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :cond_4
    iput-object p2, p0, Landroidx/preference/SwitchPreferenceCompat;->t:Ljava/lang/CharSequence;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    .line 79
    .line 80
    .line 81
    const/16 p2, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-nez p2, :cond_5

    .line 88
    .line 89
    const/4 p2, 0x4

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :cond_5
    iput-object p2, p0, Landroidx/preference/SwitchPreferenceCompat;->u:Ljava/lang/CharSequence;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    const/4 v0, 0x5

    .line 104
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    iput-boolean p2, p0, Landroidx/preference/TwoStatePreference;->r:Z

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    .line 112
    .line 113
    return-void
.end method


# virtual methods
.method public final j(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->j(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "accessibility"

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v0, 0x7f0a0604

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreferenceCompat;->n(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x1020010

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->m(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->m:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->t:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->u:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->s:Lw0/a;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

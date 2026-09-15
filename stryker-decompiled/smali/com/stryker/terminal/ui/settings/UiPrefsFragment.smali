.class public final Lcom/stryker/terminal/ui/settings/UiPrefsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private eksWeightRow:Landroid/view/View;

.field private eksWeightSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final bindSwitch(Landroid/view/View;IIIZ)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v0, p4, p5}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result p5

    invoke-virtual {p3, p5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance p5, Li2/a;

    const/4 v0, 0x1

    invoke-direct {p5, p4, v0}, Li2/a;-><init>(II)V

    invoke-virtual {p3, p5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Li2/b;

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, Li2/b;-><init>(Lcom/google/android/material/switchmaterial/SwitchMaterial;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final bindSwitch$lambda$4(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    sget-object p1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    return-void
.end method

.method private static final bindSwitch$lambda$5(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public static synthetic d(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->bindSwitch$lambda$4(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/stryker/terminal/ui/settings/UiPrefsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->onViewCreated$lambda$0(Lcom/stryker/terminal/ui/settings/UiPrefsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->bindSwitch$lambda$5(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/settings/UiPrefsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->onViewCreated$lambda$3(Lcom/stryker/terminal/ui/settings/UiPrefsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->onViewCreated$lambda$1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->onViewCreated$lambda$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/stryker/terminal/ui/settings/UiPrefsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v0, Lcom/stryker/terminal/R$string;->key_ui_eks_enabled:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->setEksWeightEnabled(Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$2(Landroid/widget/CompoundButton;Z)V
    .locals 1

    sget-object p0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v0, Lcom/stryker/terminal/R$string;->key_ui_eks_weight_explicit:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/stryker/terminal/ui/settings/UiPrefsFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 p1, 0x0

    const-string v0, "eksWeightSwitch"

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void

    :cond_0
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    throw p1
.end method

.method private final setEksWeightEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightRow:Landroid/view/View;

    const-string v1, "eksWeightRow"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightRow:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightRow:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_1
    const-string p1, "eksWeightSwitch"

    invoke-static {p1}, Li5/a;->g1(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Li5/a;->g1(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Li5/a;->g1(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v1}, Li5/a;->g1(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getDefaultViewModelCreationExtras()Lu0/b;
    .locals 1

    .line 1
    sget-object v0, Lu0/a;->b:Lu0/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/stryker/terminal/R$layout;->settings_terminal_ui:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026nal_ui, container, false)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v2, Lcom/stryker/terminal/R$id;->row_fullscreen:I

    .line 7
    .line 8
    sget v3, Lcom/stryker/terminal/R$id;->switch_fullscreen:I

    .line 9
    .line 10
    sget v4, Lcom/stryker/terminal/R$string;->key_ui_fullscreen:I

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->bindSwitch(Landroid/view/View;IIIZ)V

    .line 16
    .line 17
    .line 18
    sget v8, Lcom/stryker/terminal/R$id;->row_hide_toolbar:I

    .line 19
    .line 20
    sget v9, Lcom/stryker/terminal/R$id;->switch_hide_toolbar:I

    .line 21
    .line 22
    sget v10, Lcom/stryker/terminal/R$string;->key_ui_hide_toolbar:I

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    move-object v6, p0

    .line 26
    move-object v7, p1

    .line 27
    invoke-direct/range {v6 .. v11}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->bindSwitch(Landroid/view/View;IIIZ)V

    .line 28
    .line 29
    .line 30
    sget v2, Lcom/stryker/terminal/R$id;->row_next_tab:I

    .line 31
    .line 32
    sget v3, Lcom/stryker/terminal/R$id;->switch_next_tab:I

    .line 33
    .line 34
    sget v4, Lcom/stryker/terminal/R$string;->key_ui_next_tab_anim:I

    .line 35
    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->bindSwitch(Landroid/view/View;IIIZ)V

    .line 37
    .line 38
    .line 39
    sget p2, Lcom/stryker/terminal/R$id;->row_eks_weight:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v0, "view.findViewById(R.id.row_eks_weight)"

    .line 46
    .line 47
    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightRow:Landroid/view/View;

    .line 51
    .line 52
    sget p2, Lcom/stryker/terminal/R$id;->switch_eks_weight:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string v0, "view.findViewById(R.id.switch_eks_weight)"

    .line 59
    .line 60
    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    check-cast p2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 66
    .line 67
    sget p2, Lcom/stryker/terminal/R$id;->switch_eks:I

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 74
    .line 75
    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    .line 76
    .line 77
    sget v1, Lcom/stryker/terminal/R$string;->key_ui_eks_enabled:I

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/google/android/material/chip/a;

    .line 88
    .line 89
    invoke-direct {v1, p0, v2}, Lcom/google/android/material/chip/a;-><init>(Ljava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    .line 94
    .line 95
    sget v1, Lcom/stryker/terminal/R$id;->row_eks:I

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v1, Li2/b;

    .line 102
    .line 103
    invoke-direct {v1, p2, v2}, Li2/b;-><init>(Lcom/google/android/material/switchmaterial/SwitchMaterial;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 110
    .line 111
    const-string v1, "eksWeightSwitch"

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    sget v3, Lcom/stryker/terminal/R$string;->key_ui_eks_weight_explicit:I

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-virtual {v0, v3, v4}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 127
    .line 128
    if-eqz p1, :cond_1

    .line 129
    .line 130
    new-instance v0, Li2/e;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->eksWeightRow:Landroid/view/View;

    .line 139
    .line 140
    if-eqz p1, :cond_0

    .line 141
    .line 142
    new-instance v0, Lcom/nambimobile/widgets/efab/a;

    .line 143
    .line 144
    const/4 v1, 0x2

    .line 145
    invoke-direct {v0, p0, v1}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->setEksWeightEnabled(Z)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_0
    const-string p1, "eksWeightRow"

    .line 160
    .line 161
    invoke-static {p1}, Li5/a;->g1(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v2

    .line 165
    :cond_1
    invoke-static {v1}, Li5/a;->g1(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v2

    .line 169
    :cond_2
    invoke-static {v1}, Li5/a;->g1(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v2
.end method

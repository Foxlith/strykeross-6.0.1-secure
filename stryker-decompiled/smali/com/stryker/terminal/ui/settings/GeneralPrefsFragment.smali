.class public final Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


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

    const/4 v0, 0x0

    invoke-direct {p5, p4, v0}, Li2/a;-><init>(II)V

    invoke-virtual {p3, p5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Li2/b;

    invoke-direct {p2, p3, v0}, Li2/b;-><init>(Lcom/google/android/material/switchmaterial/SwitchMaterial;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final bindSwitch$lambda$1(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    sget-object p1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    return-void
.end method

.method private static final bindSwitch$lambda$2(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->bindSwitch$lambda$2(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->bindSwitch$lambda$1(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/material/textfield/TextInputEditText;Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->showInitialCommandDialog$lambda$3(Lcom/google/android/material/textfield/TextInputEditText;Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;Lcom/google/android/material/textview/MaterialTextView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->onViewCreated$lambda$0(Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;Lcom/google/android/material/textview/MaterialTextView;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;Lcom/google/android/material/textview/MaterialTextView;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "commandValue"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->showInitialCommandDialog(Lcom/google/android/material/textview/MaterialTextView;)V

    return-void
.end method

.method private final refreshCommandValue(Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 2

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->getInitialCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq5/h;->w1(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/stryker/terminal/R$string;->term_settings_value_none:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showInitialCommandDialog(Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$layout;->dialog_terminal_input:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$id;->input_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    sget-object v3, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v3}, Lcom/stryker/terminal/component/config/NeoPreference;->getInitialCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/stryker/terminal/R$string;->term_pref_initial_command_title:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    sget v3, Lcom/stryker/terminal/R$string;->term_dialog_save:I

    new-instance v4, Lcom/stryker/terminal/ui/customize/b;

    const/4 v5, 0x2

    invoke-direct {v4, v1, p0, p1, v5}, Lcom/stryker/terminal/ui/customize/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method private static final showInitialCommandDialog$lambda$3(Lcom/google/android/material/textfield/TextInputEditText;Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$label"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget p4, Lcom/stryker/terminal/R$string;->key_general_initial_command:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-virtual {p3, p4, p0}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->refreshCommandValue(Lcom/google/android/material/textview/MaterialTextView;)V

    return-void
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

    sget p3, Lcom/stryker/terminal/R$layout;->settings_terminal_general:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026eneral, container, false)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stryker/terminal/R$id;->initial_command_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "commandValue"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->refreshCommandValue(Lcom/google/android/material/textview/MaterialTextView;)V

    sget v1, Lcom/stryker/terminal/R$id;->row_initial_command:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/a;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/stryker/terminal/R$id;->row_backspace:I

    sget v3, Lcom/stryker/terminal/R$id;->switch_backspace:I

    sget v4, Lcom/stryker/terminal/R$string;->key_generaL_backspace_map_to_esc:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->bindSwitch(Landroid/view/View;IIIZ)V

    sget v2, Lcom/stryker/terminal/R$id;->row_volume:I

    sget v3, Lcom/stryker/terminal/R$id;->switch_volume:I

    sget v4, Lcom/stryker/terminal/R$string;->key_general_volume_as_control:I

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->bindSwitch(Landroid/view/View;IIIZ)V

    sget v2, Lcom/stryker/terminal/R$id;->row_word_ime:I

    sget v3, Lcom/stryker/terminal/R$id;->switch_word_ime:I

    sget v4, Lcom/stryker/terminal/R$string;->key_general_enable_word_based_ime:I

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->bindSwitch(Landroid/view/View;IIIZ)V

    return-void
.end method

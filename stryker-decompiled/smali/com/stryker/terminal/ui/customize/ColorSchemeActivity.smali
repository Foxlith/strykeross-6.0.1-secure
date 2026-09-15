.class public final Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;
.super Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;
.source "SourceFile"


# instance fields
.field private final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/stryker/terminal/ui/customize/ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field public adapter:Lcom/stryker/terminal/ui/customize/ColorItemAdapter;

.field private changed:Z

.field private final colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

.field private editingColorScheme:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;-><init>()V

    new-instance v0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;

    invoke-direct {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;-><init>()V

    new-instance v1, Le0/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Le0/b;-><init>(I)V

    const-class v3, Lcom/stryker/terminal/ui/customize/ColorItem;

    invoke-virtual {v0, v3, v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->setOrderForModel(Ljava/lang/Class;Ljava/util/Comparator;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->build()Ljava/util/Comparator;

    move-result-object v0

    const-string v1, "ComparatorBuilder<ColorI\u2026rType)\n    }\n    .build()"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->COMPARATOR:Ljava/util/Comparator;

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-class v4, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    iput-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    return-void
.end method

.method private static final COMPARATOR$lambda$0(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorItem;)I
    .locals 0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorType()I

    move-result p0

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorType()I

    move-result p1

    invoke-static {p0, p1}, Li5/a;->t(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getColorSchemeComponent$p(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    return-object p0
.end method

.method public static final synthetic access$getEditingColorScheme$p(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->editingColorScheme:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    return-object p0
.end method

.method public static final synthetic access$showItemEditor(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Lcom/stryker/terminal/ui/customize/ColorItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->showItemEditor(Lcom/stryker/terminal/ui/customize/ColorItem;)V

    return-void
.end method

.method private final applyColorScheme(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Z)V
    .locals 5

    invoke-virtual {p1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/stryker/terminal/R$layout;->dialog_edit_text:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$string;->save_color_info:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text_editor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sget v2, Lcom/stryker/terminal/R$string;->save_color_scheme_name_template:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/stryker/terminal/R$string;->save_color:I

    invoke-virtual {v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v2, Lcom/stryker/terminal/ui/customize/d;

    invoke-direct {v2, p1, v1, p0, p2}, Lcom/stryker/terminal/ui/customize/d;-><init>(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Landroid/widget/EditText;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Z)V

    const p1, 0x1040013

    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const p2, 0x1040009

    invoke-virtual {p1, p2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->saveColorScheme(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->reloadColorSchemes()Z

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->setCurrentColorScheme(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V

    iput-boolean v1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->changed:Z

    sget p1, Lcom/stryker/terminal/R$string;->done:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/stryker/terminal/R$string;->error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic applyColorScheme$default(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->applyColorScheme(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Z)V

    return-void
.end method

.method private static final applyColorScheme$lambda$7(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Landroid/widget/EditText;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    const-string p4, "$colorScheme"

    invoke-static {p0, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p2, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setColorName(Ljava/lang/String;)V

    invoke-direct {p2, p0, p3}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->applyColorScheme(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorItem;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->COMPARATOR$lambda$0(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->onKeyDown$lambda$2(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Lj5/l;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->showItemEditor$lambda$6$lambda$5(Lj5/l;I)V

    return-void
.end method

.method public static synthetic i(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->onKeyDown$lambda$3(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Landroid/widget/EditText;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->applyColorScheme$lambda$7(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Landroid/widget/EditText;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Lj5/l;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->showItemEditor$lambda$6(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Lj5/l;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Lj5/l;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->showItemEditor$lambda$4(Lj5/l;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final onKeyDown$lambda$2(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->editingColorScheme:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->applyColorScheme(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Z)V

    return-void

    :cond_0
    const-string p0, "editingColorScheme"

    invoke-static {p0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onKeyDown$lambda$3(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final showItemEditor(Lcom/stryker/terminal/ui/customize/ColorItem;)V
    .locals 7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$layout;->dialog_edit_text:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v4, Lcom/stryker/terminal/R$string;->input_new_value:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text_editor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stryker/terminal/backend/TerminalColors;->parse(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    new-instance v4, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$1;

    invoke-direct {v4, v1, p0}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$1;-><init>(Landroid/widget/EditText;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;

    invoke-direct {v4, p1, p0}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;-><init>(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)V

    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v5, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v5, 0x1040009

    invoke-virtual {v0, v5, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v2, Lcom/stryker/terminal/ui/customize/a;

    invoke-direct {v2, v4, v1, v3}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x1040013

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$string;->select_new_value:I

    new-instance v2, Lcom/stryker/terminal/ui/customize/b;

    invoke-direct {v2, p1, p0, v4, v3}, Lcom/stryker/terminal/ui/customize/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method private static final showItemEditor$lambda$4(Lj5/l;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p2, "$applyColor"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showItemEditor$lambda$6(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Lj5/l;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const-string p3, "$model"

    .line 2
    .line 3
    invoke-static {p0, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "this$0"

    .line 7
    .line 8
    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p3, "$applyColor"

    .line 12
    .line 13
    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget p3, Ls4/d;->e:I

    .line 17
    .line 18
    sget-object p3, Lq4/c;->a:Lq4/c;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/stryker/terminal/backend/TerminalColors;->parse(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    sget-object p4, Lp4/b;->a:Lp4/b;

    .line 29
    .line 30
    new-instance v0, Lv/f;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-direct {v0, p2, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Les/dmoral/coloromatic/ColorOMaticDialog;

    .line 37
    .line 38
    invoke-direct {p2}, Les/dmoral/coloromatic/ColorOMaticDialog;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-static {p0, p3, p4, v1}, Les/dmoral/coloromatic/ColorOMaticDialog;->e(ILq4/c;Lp4/b;Z)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p2, Les/dmoral/coloromatic/ColorOMaticDialog;->a:Lv/f;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "ColorOMaticDialog"

    .line 56
    .line 57
    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/u0;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static final showItemEditor$lambda$6$lambda$5(Lj5/l;I)V
    .locals 1

    .line 1
    const-string v0, "$applyColor"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toHexString(newColor)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/stryker/terminal/ui/customize/ColorItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->adapter:Lcom/stryker/terminal/ui/customize/ColorItemAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->changed:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/stryker/terminal/R$layout;->ui_color_scheme:I

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->initCustomizationComponent(I)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getCurrentColorScheme()Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->copy()Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->editingColorScheme:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    const-string v0, "editingColorScheme"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setColorName(Ljava/lang/String;)V

    sget p1, Lcom/stryker/terminal/R$id;->terminal_view:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;

    sget-object v2, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    invoke-virtual {v2, p1, v1}, Lcom/stryker/terminal/utils/Terminals;->setupTerminalView(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V

    new-instance p1, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;

    iget-object v2, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->editingColorScheme:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->COMPARATOR:Ljava/util/Comparator;

    new-instance v1, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$onCreate$1;-><init>(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)V

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;-><init>(Landroid/content/Context;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Ljava/util/Comparator;Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;)V

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->setAdapter(Lcom/stryker/terminal/ui/customize/ColorItemAdapter;)V

    sget p1, Lcom/stryker/terminal/R$id;->custom_color_color_list:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->getAdapter()Lcom/stryker/terminal/ui/customize/ColorItemAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    return-void

    :cond_0
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lf/q;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$menu;->menu_color_editor:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->changed:Z

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/stryker/terminal/R$string;->discard_changes:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget p2, Lcom/stryker/terminal/R$string;->save:I

    new-instance v0, Lcom/stryker/terminal/ui/customize/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/ui/customize/c;-><init>(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;I)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const p2, 0x1040009

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget p2, Lcom/stryker/terminal/R$string;->exit:I

    new-instance v0, Lcom/stryker/terminal/ui/customize/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/ui/customize/c;-><init>(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;I)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lf/q;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    sget v1, Lcom/stryker/terminal/R$id;->action_done:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->editingColorScheme:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v2, v3, v1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->applyColorScheme$default(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "editingColorScheme"

    invoke-static {p1}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final setAdapter(Lcom/stryker/terminal/ui/customize/ColorItemAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->adapter:Lcom/stryker/terminal/ui/customize/ColorItemAdapter;

    return-void
.end method

.method public final setChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->changed:Z

    return-void
.end method

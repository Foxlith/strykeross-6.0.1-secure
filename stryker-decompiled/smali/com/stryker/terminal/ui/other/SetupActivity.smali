.class public final Lcom/stryker/terminal/ui/other/SetupActivity;
.super Lf/q;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/stryker/terminal/setup/ResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/ui/other/SetupActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/ui/other/SetupActivity$Companion;

.field private static final REQUEST_SELECT_PARAMETER:I = 0x208


# instance fields
.field private final hintMapping:[Ljava/lang/Integer;

.field private setupParameter:Ljava/lang/String;

.field private setupParameterUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/ui/other/SetupActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/ui/other/SetupActivity$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/ui/other/SetupActivity;->Companion:Lcom/stryker/terminal/ui/other/SetupActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lf/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->setupParameter:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    sget v1, Lcom/stryker/terminal/R$id;->setup_method_online:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/stryker/terminal/R$string;->setup_hint_online:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget v1, Lcom/stryker/terminal/R$id;->setup_method_local:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget v1, Lcom/stryker/terminal/R$string;->setup_hint_local:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget v1, Lcom/stryker/terminal/R$id;->setup_method_backup:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget v1, Lcom/stryker/terminal/R$string;->setup_hint_backup:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->hintMapping:[Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$executeAptUpgrade(Lcom/stryker/terminal/ui/other/SetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SetupActivity;->executeAptUpgrade()V

    return-void
.end method

.method private final createSourceConnection(ILjava/lang/String;Landroid/net/Uri;)Lcom/stryker/terminal/setup/SourceConnection;
    .locals 1

    sget v0, Lcom/stryker/terminal/R$id;->setup_method_local:I

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/stryker/terminal/setup/LocalFileConnection;

    invoke-static {p3}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-direct {p1, p0, p3}, Lcom/stryker/terminal/setup/LocalFileConnection;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/stryker/terminal/R$id;->setup_method_online:I

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/stryker/terminal/setup/NetworkConnection;

    invoke-direct {p1, p2}, Lcom/stryker/terminal/setup/NetworkConnection;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget p2, Lcom/stryker/terminal/R$id;->setup_method_backup:I

    if-ne p1, p2, :cond_2

    new-instance p1, Lcom/stryker/terminal/setup/BackupFileConnection;

    invoke-static {p3}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-direct {p1, p0, p3}, Lcom/stryker/terminal/setup/BackupFileConnection;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected setup method!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final doPrepareSetup()V
    .locals 5

    sget v0, Lcom/stryker/terminal/R$id;->setup_method_group:I

    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/stryker/terminal/R$id;->setup_source_parameter:I

    invoke-virtual {p0, v1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->setupParameter:Ljava/lang/String;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->setupParameterUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    sget v2, Lcom/stryker/terminal/R$id;->setup_method_backup:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Lcom/stryker/terminal/R$id;->setup_method_local:I

    if-ne v0, v2, :cond_1

    :goto_0
    sget-object v0, Lcom/stryker/terminal/setup/SetupHelper;->INSTANCE:Lcom/stryker/terminal/setup/SetupHelper;

    sget v1, Lcom/stryker/terminal/R$string;->setup_error_parameter_null:I

    invoke-virtual {v0, p0, v1}, Lcom/stryker/terminal/setup/SetupHelper;->makeErrorDialog(Landroid/content/Context;I)Lf/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    sget-object v2, Lcom/stryker/terminal/setup/SetupHelper;->INSTANCE:Lcom/stryker/terminal/setup/SetupHelper;

    sget v3, Lcom/stryker/terminal/R$string;->setup_preparing:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.setup_preparing)"

    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/stryker/terminal/setup/SetupHelper;->makeProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/stryker/terminal/ui/other/l;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/stryker/terminal/ui/other/l;-><init>(Lcom/stryker/terminal/ui/other/SetupActivity;ILandroid/app/ProgressDialog;Landroid/widget/EditText;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final doPrepareSetup$lambda$2(Lcom/stryker/terminal/ui/other/SetupActivity;ILandroid/app/ProgressDialog;Landroid/widget/EditText;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialog"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->setupParameter:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/other/SetupActivity;->validateParameter(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lt3/e;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lt3/e;-><init>(Landroid/app/ProgressDialog;Landroid/widget/EditText;Ljava/lang/String;Lcom/stryker/terminal/ui/other/SetupActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final doPrepareSetup$lambda$2$lambda$1(Landroid/app/ProgressDialog;Landroid/widget/EditText;Ljava/lang/String;Lcom/stryker/terminal/ui/other/SetupActivity;I)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    sget-object p0, Lcom/stryker/terminal/setup/SetupHelper;->INSTANCE:Lcom/stryker/terminal/setup/SetupHelper;

    invoke-virtual {p0, p3, p2}, Lcom/stryker/terminal/setup/SetupHelper;->makeErrorDialog(Landroid/content/Context;Ljava/lang/String;)Lf/n;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    iget-object p0, p3, Lcom/stryker/terminal/ui/other/SetupActivity;->setupParameter:Ljava/lang/String;

    iget-object p1, p3, Lcom/stryker/terminal/ui/other/SetupActivity;->setupParameterUri:Landroid/net/Uri;

    invoke-direct {p3, p4, p0, p1}, Lcom/stryker/terminal/ui/other/SetupActivity;->createSourceConnection(ILjava/lang/String;Landroid/net/Uri;)Lcom/stryker/terminal/setup/SourceConnection;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/stryker/terminal/ui/other/SetupActivity;->showConfirmDialog(Lcom/stryker/terminal/setup/SourceConnection;)V

    return-void
.end method

.method private final doSelectParameter()V
    .locals 5

    sget v0, Lcom/stryker/terminal/R$id;->setup_method_group:I

    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/stryker/terminal/R$id;->setup_method_backup:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/stryker/terminal/R$id;->setup_method_local:I

    if-ne v0, v1, :cond_1

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget v1, Lcom/stryker/terminal/R$string;->setup_local:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x208

    invoke-virtual {p0, v0, v1}, Landroidx/activity/h;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget v0, Lcom/stryker/terminal/R$string;->no_file_picker:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    sget v1, Lcom/stryker/terminal/R$id;->setup_method_online:I

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$layout;->dialog_edit_text:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$string;->input_new_source_url:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text_editor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/stryker/terminal/R$string;->new_source:I

    invoke-virtual {v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v2, Lcom/stryker/terminal/ui/customize/a;

    invoke-direct {v2, v1, p0}, Lcom/stryker/terminal/ui/customize/a;-><init>(Landroid/widget/EditText;Lcom/stryker/terminal/ui/other/SetupActivity;)V

    const v1, 0x1040013

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    :cond_2
    :goto_1
    return-void
.end method

.method private static final doSelectParameter$lambda$3(Landroid/widget/EditText;Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/stryker/terminal/R$id;->setup_source_parameter:I

    invoke-virtual {p1, p2}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final doSetup(Lcom/stryker/terminal/setup/SourceConnection;)V
    .locals 1

    sget-object v0, Lcom/stryker/terminal/setup/SetupHelper;->INSTANCE:Lcom/stryker/terminal/setup/SetupHelper;

    invoke-virtual {v0, p0, p1, p0}, Lcom/stryker/terminal/setup/SetupHelper;->setup(Lf/q;Lcom/stryker/terminal/setup/SourceConnection;Lcom/stryker/terminal/setup/ResultListener;)V

    return-void
.end method

.method private final executeAptUpdate()V
    .locals 7

    const-string v1, "update"

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/stryker/terminal/ui/other/SetupActivity$executeAptUpdate$1;

    invoke-direct {v4, p0}, Lcom/stryker/terminal/ui/other/SetupActivity$executeAptUpdate$1;-><init>(Lcom/stryker/terminal/ui/other/SetupActivity;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/stryker/terminal/utils/UtilsKt;->runApt$default(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;ILjava/lang/Object;)V

    return-void
.end method

.method private final executeAptUpgrade()V
    .locals 7

    const-string v1, "upgrade"

    const-string v0, "-y"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/stryker/terminal/ui/other/SetupActivity$executeAptUpgrade$1;

    invoke-direct {v4, p0}, Lcom/stryker/terminal/ui/other/SetupActivity$executeAptUpgrade$1;-><init>(Lcom/stryker/terminal/ui/other/SetupActivity;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/stryker/terminal/utils/UtilsKt;->runApt$default(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Landroid/app/ProgressDialog;Landroid/widget/EditText;Ljava/lang/String;Lcom/stryker/terminal/ui/other/SetupActivity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/other/SetupActivity;->doPrepareSetup$lambda$2$lambda$1(Landroid/app/ProgressDialog;Landroid/widget/EditText;Ljava/lang/String;Lcom/stryker/terminal/ui/other/SetupActivity;I)V

    return-void
.end method

.method public static synthetic g(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/SetupActivity;->onResult$lambda$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Lcom/stryker/terminal/ui/other/SetupActivity;ILandroid/app/ProgressDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/other/SetupActivity;->doPrepareSetup$lambda$2(Lcom/stryker/terminal/ui/other/SetupActivity;ILandroid/app/ProgressDialog;Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic i(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/other/SetupActivity;->onResult$lambda$5(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/other/SetupActivity;->onCreate$lambda$0(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic k(Landroid/widget/EditText;Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/other/SetupActivity;->doSelectParameter$lambda$3(Landroid/widget/EditText;Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Lcom/stryker/terminal/ui/other/SetupActivity;Lcom/stryker/terminal/setup/SourceConnection;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/other/SetupActivity;->showConfirmDialog$lambda$4(Lcom/stryker/terminal/ui/other/SetupActivity;Lcom/stryker/terminal/setup/SourceConnection;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    iget-object p4, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->hintMapping:[Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, v0}, Lg5/i;->l0([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p4

    if-ltz p4, :cond_1

    rem-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->hintMapping:[Ljava/lang/Integer;

    add-int/lit8 p4, p4, 0x1

    aget-object v0, v0, p4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->hintMapping:[Ljava/lang/Integer;

    aget-object p4, v0, p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, p1, p3}, Lcom/stryker/terminal/ui/other/SetupActivity;->setDefaultValue(Landroid/widget/EditText;I)V

    goto :goto_1

    :cond_1
    :goto_0
    sget p0, Lcom/stryker/terminal/R$string;->setup_input_source_parameter:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHint(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final onResult$lambda$5(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final onResult$lambda$6(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {p0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stryker/terminal/App;->openHelpLink()V

    return-void
.end method

.method private final setDefaultValue(Landroid/widget/EditText;I)V
    .locals 1

    sget v0, Lcom/stryker/terminal/R$id;->setup_method_online:I

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/stryker/terminal/component/config/NeoTermPath;->INSTANCE:Lcom/stryker/terminal/component/config/NeoTermPath;

    invoke-virtual {p2}, Lcom/stryker/terminal/component/config/NeoTermPath;->getDEFAULT_MAIN_PACKAGE_SOURCE()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/stryker/terminal/ui/other/SetupActivity;->setupParameter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showConfirmDialog(Lcom/stryker/terminal/setup/SourceConnection;)V
    .locals 3

    sget-object v0, Lcom/stryker/terminal/setup/SetupHelper;->INSTANCE:Lcom/stryker/terminal/setup/SetupHelper;

    invoke-virtual {v0}, Lcom/stryker/terminal/setup/SetupHelper;->needSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Lcom/stryker/terminal/R$string;->setup_confirm:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/stryker/terminal/R$string;->setup_reset_confirm:I

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lcom/stryker/terminal/R$string;->setup_confirm_text:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/stryker/terminal/R$string;->setup_reset_confirm_text:I

    :goto_1
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/ui/customize/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const p1, 0x1040013

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v0, 0x1040009

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method private static final showConfirmDialog$lambda$4(Lcom/stryker/terminal/ui/other/SetupActivity;Lcom/stryker/terminal/setup/SourceConnection;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$connection"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/other/SetupActivity;->doSetup(Lcom/stryker/terminal/setup/SourceConnection;)V

    return-void
.end method

.method private final validateParameter(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/stryker/terminal/R$id;->setup_method_online:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget p1, Lcom/stryker/terminal/R$string;->setup_error_invalid_url:I

    goto :goto_1

    :cond_0
    sget v0, Lcom/stryker/terminal/R$id;->setup_method_local:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lcom/stryker/terminal/R$id;->setup_method_backup:I

    if-ne p1, v0, :cond_3

    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    sget p1, Lcom/stryker/terminal/R$string;->setup_error_file_not_found:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x208

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/stryker/terminal/utils/UtilsKt;->getPathOfMediaUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/stryker/terminal/R$id;->setup_source_parameter:I

    invoke-virtual {p0, p2}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/a0;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/stryker/terminal/R$id;->setup_source_parameter_select:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SetupActivity;->doSelectParameter()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/stryker/terminal/R$id;->setup_next:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SetupActivity;->doPrepareSetup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/stryker/terminal/R$layout;->ui_setup:I

    invoke-virtual {p0, p1}, Lf/q;->setContentView(I)V

    sget p1, Lcom/stryker/terminal/R$id;->setup_source_parameter:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    sget v0, Lcom/stryker/terminal/R$id;->setup_url_tip_text:I

    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/stryker/terminal/ui/other/m;

    invoke-direct {v1, p0, p1, v0}, Lcom/stryker/terminal/ui/other/m;-><init>(Lcom/stryker/terminal/ui/other/SetupActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V

    sget p1, Lcom/stryker/terminal/R$id;->setup_method_online:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget p1, Lcom/stryker/terminal/R$id;->setup_method_local:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget p1, Lcom/stryker/terminal/R$id;->setup_method_backup:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget p1, Lcom/stryker/terminal/R$id;->setup_next:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/stryker/terminal/R$id;->setup_source_parameter_select:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResult(Ljava/lang/Exception;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    sget-object p1, Lcom/stryker/terminal/component/pm/SourceHelper;->INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/SourceHelper;->syncSource()V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SetupActivity;->executeAptUpdate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/stryker/terminal/R$string;->error:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$string;->use_system_shell:I

    new-instance v1, Lcom/stryker/terminal/ui/other/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/other/k;-><init>(Lf/q;I)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$string;->show_help:I

    new-instance v1, Lcom/stryker/terminal/setup/a;

    invoke-direct {v1, v2}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v0, 0x1040013

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    :goto_0
    return-void
.end method

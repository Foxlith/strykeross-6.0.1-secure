.class public final synthetic Lb4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/nmap/NmapScanner;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb4/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb4/a;->b:Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Lb4/a;->a:I

    iget-object v0, p0, Lb4/a;->b:Lcom/zalexdev/stryker/nmap/NmapScanner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "0"

    const/4 v4, 0x2

    const/16 v5, 0x8

    const-string v6, ""

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 2
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/nmap/NmapScanner;->W:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p1, Landroid/app/Dialog;

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    const v2, 0x103000a

    invoke-direct {p1, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    const v1, 0x7f0d00ce

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#0F0F0F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    const v1, 0x7f0a0446

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->w:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->x:Landroid/widget/ScrollView;

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    const v1, 0x7f0a0445

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->y:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    const v1, 0x7f0a0444

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->w:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->y:Landroid/widget/TextView;

    iget v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->x:Landroid/widget/ScrollView;

    new-instance v2, Lb4/b;

    invoke-direct {v2, v0, v7}, Lb4/b;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lb4/a;

    invoke-direct {v1, v0, v5}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    new-instance v1, Lcom/stryker/terminal/b;

    invoke-direct {v1, v0, v4}, Lcom/stryker/terminal/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 4
    :pswitch_1
    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v7, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    iput v7, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->Q:I

    iput v7, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->R:I

    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->h()V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->s:Landroid/widget/TextView;

    const-string v1, "0s"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    const v1, 0x7f1304a8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    const-string v1, "#757575"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->m:Landroid/widget/TextView;

    const v1, 0x7f1304ac

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->w:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->f()V

    const p1, 0x7f13048e

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/nmap/NmapScanner;->g(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "text/plain"

    const-string v2, "android.intent.action.SEND"

    .line 5
    iget-object v3, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->i()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const v4, 0x7f130483

    :try_start_0
    iget-object v5, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".provider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v3}, Landroidx/core/content/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string v3, "android.intent.extra.SUBJECT"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7f1304a5

    invoke-virtual {v0, v7, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    .line 6
    :pswitch_3
    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->i()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f1304a0

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/nmap/NmapScanner;->g(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    .line 7
    :pswitch_4
    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, "nmap"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p1, 0x7f13048f

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/nmap/NmapScanner;->g(Ljava/lang/String;)V

    :goto_3
    return-void

    .line 8
    :pswitch_5
    sget p1, Lcom/zalexdev/stryker/nmap/NmapScanner;->W:I

    .line 9
    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->e()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const p1, 0x7f13049f

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/nmap/NmapScanner;->g(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    new-array v1, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v5, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1304b2

    invoke-virtual {v3, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    new-instance v5, Lcom/stryker/terminal/ui/customize/a;

    const/16 v6, 0xd

    invoke-direct {v5, v0, p1, v6}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v1, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v1, Lcom/stryker/terminal/a;

    invoke-direct {v1, v0, v4}, Lcom/stryker/terminal/a;-><init>(Ljava/lang/Object;I)V

    const v0, 0x7f13049e

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v0, 0x7f1300f4

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    :goto_4
    return-void

    .line 10
    :pswitch_6
    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->L:Lc4/a;

    if-eqz p1, :cond_a

    .line 11
    iput-boolean v1, p1, Lc4/a;->f:Z

    iget-object v0, p1, Lc4/a;->d:Ljava/lang/Process;

    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    iget-object v0, p1, Lc4/a;->e:Lu2/b;

    if-eqz v0, :cond_a

    :try_start_2
    iget-object p1, p1, Lc4/a;->e:Lu2/b;

    invoke-virtual {p1}, Lu2/b;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_a
    return-void

    .line 12
    :pswitch_7
    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_b

    move-object p1, v6

    goto :goto_5

    :cond_b
    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f1304b1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_c
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v7

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v9, 0xc

    if-lt v4, v9, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_f

    const/16 v9, 0x241f

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    :goto_7
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v4, "nmap_target_history"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_8
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v2, "nmap_last_target"

    invoke-virtual {v1, v2, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v7, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    iput v7, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->Q:I

    iput v7, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->R:I

    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->h()V

    invoke-virtual {v0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->f()V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->n:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->m:Landroid/widget/TextView;

    const v2, 0x7f1304ad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->k:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->c:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->d:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    const v2, 0x7f1304a9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    const-string v2, "#AB47BC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->M:J

    .line 15
    iget-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->N:Landroid/os/Handler;

    if-eqz v1, :cond_12

    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->O:Landroidx/activity/d;

    if-eqz v2, :cond_12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    :cond_12
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->N:Landroid/os/Handler;

    new-instance v2, Landroidx/activity/d;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->O:Landroidx/activity/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nmap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "custom"

    iget-object v3, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v3, "nmap_custom_flags"

    invoke-virtual {v2, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_13
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->A:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "-O "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->B:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "-sV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->C:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "-F --top-ports 100 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->D:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "-Pn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->E:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "-sC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->F:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "-A -T4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->G:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "-sU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->H:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "-v "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v2, "full"

    iget-object v3, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "-p- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v1, Lc4/a;

    iget-object v2, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    new-instance v3, Lg3/b;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lg3/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, p1, v2, v3}, Lc4/a;-><init>(Ljava/lang/String;Landroid/content/Context;Lg3/b;)V

    iput-object v1, v0, Lcom/zalexdev/stryker/nmap/NmapScanner;->L:Lc4/a;

    new-array p1, v7, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

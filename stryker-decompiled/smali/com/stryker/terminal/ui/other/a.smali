.class public final synthetic Lcom/stryker/terminal/ui/other/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lcom/stryker/terminal/ui/other/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    iget v0, p0, Lcom/stryker/terminal/ui/other/a;->a:I

    const-string v1, ""

    const-string v2, "Trying to connect, please wait..."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast p1, Lo4/n;

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/custom/WiFINetwork;

    iget-object v3, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v3, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Ll4/h;->c:Ll4/l;

    invoke-virtual {v5, v2, v4}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lv3/g;

    const/16 v4, 0x17

    invoke-direct {v3, p1, v1, v0, v4}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast p1, Lo4/l;

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/custom/WiFINetwork;

    iget-object v3, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v3, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Ll4/c;->d:Ll4/l;

    invoke-virtual {v5, v2, v4}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lv3/g;

    const/16 v4, 0x16

    invoke-direct {v3, p1, v1, v0, v4}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast p1, Lo4/u;

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v2, [Z

    .line 4
    sget-object v6, Lo4/u;->m:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p1, Lo4/u;->e:Lo4/l;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo4/u;->e:Lo4/l;

    invoke-virtual {v0}, Ll4/c;->a()V

    :cond_0
    iget-object v0, p1, Lo4/u;->i:Lo4/p;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo4/u;->i:Lo4/p;

    invoke-virtual {v0}, Ll4/h;->f()V

    :cond_1
    iget-object v0, p1, Lo4/u;->f:Lo4/q;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo4/u;->f:Lo4/q;

    invoke-virtual {v0}, Ll4/c;->a()V

    :cond_2
    iget-object v0, p1, Lo4/u;->j:Ll4/h;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo4/u;->j:Ll4/h;

    invoke-virtual {v0}, Ll4/h;->f()V

    :cond_3
    iget-object v0, p1, Lo4/u;->h:Ll4/c;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lo4/u;->h:Ll4/c;

    invoke-virtual {v0}, Ll4/c;->a()V

    :cond_4
    iget-object v0, p1, Lo4/u;->g:Ll4/c;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lo4/u;->g:Ll4/c;

    invoke-virtual {v0}, Ll4/c;->a()V

    :cond_5
    iget-object v0, p1, Lo4/u;->k:Lr3/q;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lo4/u;->k:Lr3/q;

    invoke-virtual {v0}, Ll4/c;->a()V

    :cond_6
    aput-boolean v5, v2, v4

    :try_start_0
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo4/j;

    invoke-direct {v1, p1, v4}, Lo4/j;-><init>(Lo4/u;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v2, Landroid/app/Dialog;

    .line 6
    sget v3, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    const v6, 0x7f1305dd

    if-nez v4, :cond_7

    :goto_0
    invoke-virtual {p1, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v5, :cond_8

    goto :goto_0

    :cond_8
    iget-object p1, p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    const-string v0, "max_par"

    invoke-virtual {p1, v3, v0}, Ll4/l;->c0(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v2, Landroid/app/Dialog;

    .line 8
    sget v3, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->g:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object p1, p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f130163

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    iget-object v0, p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->b:Ll4/l;

    invoke-virtual {v0, v1, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->e()V

    :goto_2
    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/chip/ChipGroup;

    iget-object v3, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v3, Landroid/app/Dialog;

    .line 10
    sget v5, Lcom/zalexdev/stryker/nuclei/NucleiMain;->p:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x4

    if-lt v0, v5, :cond_10

    const-string v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_6

    .line 12
    :cond_b
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    move-result v0

    const v2, 0x7f0a047f

    if-ne v0, v2, :cond_c

    const-string v0, "low,medium,high,critical"

    goto :goto_4

    :cond_c
    const v2, 0x7f0a0480

    if-ne v0, v2, :cond_d

    const-string v0, "medium,high,critical"

    goto :goto_4

    :cond_d
    const v2, 0x7f0a047d

    if-ne v0, v2, :cond_e

    const-string v0, "high,critical"

    goto :goto_4

    :cond_e
    const-string v0, "info,low,medium,high,critical"

    .line 13
    :goto_4
    new-instance v2, Lcom/zalexdev/stryker/custom/Site;

    invoke-direct {v2}, Lcom/zalexdev/stryker/custom/Site;-><init>()V

    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/custom/Site;->setUrl(Ljava/lang/String;)V

    const-string v1, "Scheduled"

    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/custom/Site;->setStatus(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/zalexdev/stryker/nuclei/NucleiMain;->a:Ll4/l;

    const-string v4, "sites"

    .line 14
    invoke-virtual {v1, v4}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 15
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Site;->getJSON()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5, v4}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Site;->getJSON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 16
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/zalexdev/stryker/nuclei/NucleiScanService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "id"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "severity"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lq1/a;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_5

    :cond_f
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_5
    invoke-virtual {p1}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g()V

    .line 17
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_7

    :cond_10
    :goto_6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Enter a target URL"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_7
    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast p1, Lb3/g;

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 18
    sget-object v3, Lb3/g;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Uploading "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb3/g;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Landroidx/emoji2/text/m;

    const/16 v4, 0xf

    invoke-direct {v3, p1, v0, v2, v4}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lb3/g;

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lb3/f;

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    .line 20
    sget-object p1, Lb3/g;->g:Ljava/util/regex/Pattern;

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lb3/g;->d:Ll4/l;

    invoke-virtual {v0}, Ll4/l;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wordlists"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll4/l;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    iget-object v2, v6, Lb3/g;->b:Landroid/content/Context;

    if-eqz p1, :cond_11

    const p1, 0x7f130285

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lb3/g;->c(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ll4/l;->H()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/wordlists/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130286

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lb3/c;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lb3/c;-><init>(Lb3/g;Lb3/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v0, 0x7f1300f4

    invoke-virtual {p1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    :goto_9
    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v2, Landroid/app/Dialog;

    .line 22
    sget v6, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string p1, "Please enter a path"

    :goto_a
    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_13
    iget-object v6, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    invoke-virtual {v6, v0}, Ll4/l;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string p1, "File does not exist"

    goto :goto_a

    :cond_14
    const-string v6, ".csv"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string p1, "File must be a csv"

    goto :goto_a

    :cond_15
    iget-object v6, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    const-string v7, "cat "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v8, "SSID,"

    invoke-static {v6, v8}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string p1, "File is not a valid Stryker network file"

    goto :goto_a

    :cond_16
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    const/4 v6, 0x3

    aget-object v6, v1, v6

    aget-object v7, v1, v5

    const/4 v8, 0x2

    aget-object v8, v1, v8

    aget-object v9, v1, v4

    invoke-virtual {v3, v6, v7, v8, v9}, Ll4/l;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    aget-object v6, v1, v4

    aget-object v1, v1, v5

    invoke-virtual {v3, v6, v1}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_c

    :cond_17
    iget-object v0, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lt2/m;

    iget-object v3, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->b:Landroid/content/Context;

    iget-object v5, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->a:Landroidx/fragment/app/a0;

    iget-object v6, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    invoke-virtual {v6}, Ll4/l;->G()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v1, v3, v5, v6, v4}, Lt2/m;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    const-string v1, "Imported networks"

    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->c:Ll4/l;

    const-string v0, "Failed to import networks"

    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :goto_d
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/stryker/terminal/ui/other/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/stryker/terminal/ui/other/BonusActivity;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/a;->d:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/stryker/terminal/ui/other/a;->e:Ljava/lang/Object;

    check-cast v3, Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;

    .line 24
    invoke-static {v0, v1, v2, v3, p1}, Lcom/stryker/terminal/ui/other/BonusActivity;->f(Lcom/stryker/terminal/ui/other/BonusActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/stryker/terminal/ui/other/BonusActivity$onAttachedToWindow$stick$1;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

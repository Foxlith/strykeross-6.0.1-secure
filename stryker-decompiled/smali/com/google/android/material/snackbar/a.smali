.class public final synthetic Lcom/google/android/material/snackbar/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/material/snackbar/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/snackbar/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/material/snackbar/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    iget v3, v0, Lcom/google/android/material/snackbar/a;->a:I

    const v4, 0x7f0a0205

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/google/android/material/snackbar/a;->b:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/material/snackbar/a;->c:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    check-cast v10, Lo4/q;

    check-cast v9, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v9}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Ll4/c;->d:Ll4/l;

    invoke-virtual {v3, v1, v2}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    move-object v5, v10

    check-cast v5, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    check-cast v9, Lf/n;

    .line 2
    sget v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v9}, Lf/j0;->dismiss()V

    .line 4
    iget-object v1, v5, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0043

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, v5, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Lf/n;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    const v3, 0x7f0a04e8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->g(Landroid/view/View;)V

    const v3, 0x7f0a05f0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/ProgressBar;

    const v3, 0x7f0a05ee

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a05ef

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    const v4, 0x7f0a05f3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/ProgressBar;

    const v4, 0x7f0a05f1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    const v4, 0x7f0a05f2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    const v4, 0x7f0a05f6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/ProgressBar;

    const v4, 0x7f0a05f4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    const v4, 0x7f0a05f5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/TextView;

    const v4, 0x7f0a04e4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v4, 0x7f0a04e7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v4, 0x7f0a04e6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lh4/d;

    invoke-direct {v1, v2, v7}, Lh4/d;-><init>(Lf/n;I)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6, v3, v8, v7}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lh4/g;

    move-object v4, v2

    move-object v7, v3

    invoke-direct/range {v4 .. v17}, Lh4/g;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-string v3, "stryker-self-destruct"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_1
    move-object v5, v10

    check-cast v5, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    move-object v1, v9

    check-cast v1, Landroid/widget/TextView;

    .line 5
    sget v3, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, v5, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0072

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v9, -0x2

    invoke-virtual {v4, v6, v9}, Landroid/view/Window;->setLayout(II)V

    const v4, 0x7f0a0657

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a069b

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    const v9, 0x7f0a069c

    invoke-virtual {v3, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    const v10, 0x7f0a0492

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    const v11, 0x7f0a00f1

    invoke-virtual {v3, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    const v12, 0x7f1305df

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f1305de

    invoke-virtual {v5, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v4, v5, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 8
    iget-object v4, v4, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v12, "max_par"

    .line 9
    invoke-interface {v4, v12, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v7, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 10
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lj2/i;

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/stryker/terminal/ui/other/a;

    const/4 v11, 0x6

    move-object v4, v2

    move-object v6, v9

    move-object v7, v1

    move-object v8, v3

    move v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_2
    check-cast v10, Lx3/b;

    check-cast v9, Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 11
    iget-object v1, v10, Lx3/b;->c:Landroid/content/Context;

    check-cast v1, Lf/q;

    invoke-virtual {v1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    move-result-object v1

    .line 12
    invoke-static {v1, v1}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/zalexdev/stryker/metasploit/SetValues;

    invoke-direct {v2, v9}, Lcom/zalexdev/stryker/metasploit/SetValues;-><init>(Lcom/zalexdev/stryker/custom/MsfExploit;)V

    .line 14
    invoke-virtual {v1, v2, v6, v4}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 15
    invoke-virtual {v1, v8}, Landroidx/fragment/app/a;->h(Z)I

    return-void

    :pswitch_3
    check-cast v10, Lcom/zalexdev/stryker/metasploit/SetValues;

    check-cast v9, Landroidx/fragment/app/u0;

    .line 16
    iget-object v1, v10, Lcom/zalexdev/stryker/metasploit/SetValues;->c:Lx3/d;

    .line 17
    iget-object v2, v1, Lx3/d;->d:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v11, v1, Lx3/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v3, v12, :cond_2

    .line 19
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    .line 20
    iget-object v7, v1, Lx3/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    move v3, v8

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v12, v1, Lx3/d;->e:[Ljava/lang/String;

    if-ge v3, v7, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v1, v8

    .line 21
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zalexdev/stryker/custom/Argument;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Argument;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, v12, v1

    if-eqz v2, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22
    :cond_5
    iget-object v1, v10, Lcom/zalexdev/stryker/metasploit/SetValues;->c:Lx3/d;

    invoke-virtual {v1}, Lx3/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v10, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    iget-object v2, v10, Lcom/zalexdev/stryker/metasploit/SetValues;->c:Lx3/d;

    invoke-virtual {v2}, Lx3/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/MsfExploit;->setArguments(Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v9}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    const v2, 0x7f01002d

    const v3, 0x7f01002e

    .line 24
    invoke-virtual {v1, v2, v3, v8, v8}, Landroidx/fragment/app/e1;->f(IIII)V

    .line 25
    new-instance v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    iget-object v3, v10, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    invoke-direct {v2, v3}, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;-><init>(Lcom/zalexdev/stryker/custom/MsfExploit;)V

    .line 26
    invoke-virtual {v1, v2, v6, v4}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v1, v8}, Landroidx/fragment/app/a;->h(Z)I

    goto :goto_4

    .line 28
    :cond_6
    :goto_3
    iget-object v1, v10, Lcom/zalexdev/stryker/metasploit/SetValues;->b:Landroid/content/Context;

    const v2, 0x7f13042b

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    :pswitch_4
    check-cast v10, Landroid/app/Dialog;

    check-cast v9, [Ll4/c;

    .line 29
    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    aget-object v1, v9, v8

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ll4/c;->a()V

    :cond_7
    return-void

    :pswitch_5
    check-cast v10, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    check-cast v9, [Ljava/lang/String;

    .line 30
    sget-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_8

    .line 31
    invoke-static {}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 32
    :cond_8
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    array-length v3, v9

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v3, v9, v3

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v2, v8

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aget-byte v4, v2, v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, ":%02x:%02x:%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    :goto_5
    iget-object v2, v10, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_9

    iget-object v2, v10, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9
    return-void

    :pswitch_6
    check-cast v10, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    check-cast v9, Landroid/app/Dialog;

    .line 34
    iget-object v1, v10, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    const-string v2, "local_scan_target"

    invoke-virtual {v1, v2, v5}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v10}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j()V

    return-void

    :pswitch_7
    check-cast v10, Landroid/app/Dialog;

    check-cast v9, Ll4/c;

    .line 35
    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v9}, Ll4/c;->a()V

    return-void

    :pswitch_8
    check-cast v10, Lq3/c;

    check-cast v9, Lcom/zalexdev/stryker/custom/License;

    .line 36
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iget-object v1, v9, Lcom/zalexdev/stryker/custom/License;->url:Ljava/lang/String;

    .line 38
    iget-object v2, v10, Lq3/c;->b:Landroid/app/Activity;

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string v3, "No browser available to open "

    .line 39
    invoke-static {v3, v1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v3, v10, Lq3/c;->c:Ll4/l;

    invoke-virtual {v3, v2, v1}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_6
    return-void

    :pswitch_9
    check-cast v10, Landroid/widget/TextView;

    check-cast v9, Landroid/content/Context;

    .line 41
    sget-object v1, Ln3/h;->a:[Ljava/lang/String;

    .line 42
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    const-string v2, "clipboard"

    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    const-string v3, "hydra"

    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v1, 0x7f1302ba

    invoke-static {v9, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_7
    return-void

    :pswitch_a
    check-cast v10, Lc3/b;

    check-cast v9, Lb3/f;

    .line 43
    sget-object v1, Lb3/g;->g:Ljava/util/regex/Pattern;

    .line 44
    iget-object v1, v10, Lc3/b;->j:Ljava/lang/Process;

    if-eqz v1, :cond_c

    .line 45
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_c
    iget-object v1, v10, Lc3/b;->k:Lu2/b;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lu2/b;->a()V

    .line 46
    :cond_d
    iget-object v1, v9, Lb3/f;->f:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v9, Lb3/f;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v9, Lb3/f;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v9, Lb3/f;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_b
    check-cast v10, Lb3/g;

    check-cast v9, Ljava/lang/String;

    .line 47
    sget-object v1, Lb3/g;->g:Ljava/util/regex/Pattern;

    .line 48
    invoke-virtual {v10, v9}, Lb3/g;->b(Ljava/lang/String;)V

    return-void

    :pswitch_c
    check-cast v10, Lcom/zalexdev/stryker/geomac/GeoMac;

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    .line 49
    sget v1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-virtual {v9}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v9}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_8
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v10, v5}, Lcom/zalexdev/stryker/geomac/GeoMac;->e(Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_d
    check-cast v10, Lcom/zalexdev/stryker/coremanger/CoreManager;

    check-cast v9, Lr0/b;

    .line 51
    sget v1, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    iget v1, v9, Lr0/b;->a:I

    invoke-virtual {v10, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, v10, Lcom/zalexdev/stryker/coremanger/CoreManager;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f130671

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f130670

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/stryker/terminal/ui/customize/a;

    const/4 v3, 0x7

    invoke-direct {v2, v10, v9, v3}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v3, 0x7f13066f

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lf/m;->show()Lf/n;

    return-void

    :pswitch_e
    check-cast v10, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;

    check-cast v9, Landroid/content/Context;

    .line 53
    iget-object v1, v10, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, v10, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Sploit;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v7

    goto :goto_a

    :cond_10
    move v1, v8

    :goto_a
    iget-object v2, v10, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v10, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    move v7, v8

    :goto_b
    if-nez v1, :cond_12

    if-nez v7, :cond_12

    iget-object v1, v10, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->b:Ll4/l;

    const v2, 0x7f130070

    invoke-virtual {v10, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zalexdev/stryker/searchsploit/ExploitWebview;

    invoke-direct {v1, v9, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v10, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Sploit;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exploit"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v10, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_c
    return-void

    :pswitch_f
    check-cast v10, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    check-cast v9, Ljava/lang/String;

    .line 54
    iget-object v1, v10, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v10, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v10}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->j()V

    return-void

    :pswitch_10
    check-cast v10, Lcom/zalexdev/stryker/MainActivity;

    check-cast v9, La4/f;

    .line 55
    sget-object v1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 56
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lf/n0;

    const/16 v3, 0xc

    invoke-direct {v2, v10, v9, v3}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_11
    check-cast v10, Lcom/zalexdev/stryker/MainActivity;

    check-cast v9, Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-static {v10, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_12
    check-cast v10, Lcom/zalexdev/stryker/MainActivity;

    check-cast v9, La4/e;

    .line 60
    sget-object v1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 61
    invoke-virtual {v10, v9}, Lcom/zalexdev/stryker/MainActivity;->g(La4/e;)V

    return-void

    :pswitch_13
    check-cast v10, Lcom/zalexdev/stryker/MainActivity;

    check-cast v9, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 62
    iget-object v1, v10, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    if-eqz v1, :cond_15

    const-string v2, "nav_type"

    invoke-virtual {v1, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v9, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_d

    :cond_13
    invoke-virtual {v9, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    const v1, 0x800003

    .line 63
    invoke-virtual {v9, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 64
    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->c()V

    goto :goto_d

    :cond_14
    invoke-virtual {v9}, Landroidx/drawerlayout/widget/DrawerLayout;->p()V

    :cond_15
    :goto_d
    return-void

    :pswitch_14
    check-cast v10, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;

    check-cast v9, Lcom/google/android/material/textview/MaterialTextView;

    .line 65
    invoke-static {v10, v9, v1}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->g(Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;Lcom/google/android/material/textview/MaterialTextView;Landroid/view/View;)V

    return-void

    :pswitch_15
    check-cast v10, Lcom/stryker/terminal/ui/pm/PackageViewHolder;

    check-cast v9, Lcom/stryker/terminal/ui/pm/PackageModel;

    invoke-static {v10, v9, v1}, Lcom/stryker/terminal/ui/pm/PackageViewHolder;->a(Lcom/stryker/terminal/ui/pm/PackageViewHolder;Lcom/stryker/terminal/ui/pm/PackageModel;Landroid/view/View;)V

    return-void

    :pswitch_16
    check-cast v10, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;

    check-cast v9, Lcom/stryker/terminal/ui/customize/ColorItem;

    invoke-static {v10, v9, v1}, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->a(Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;Lcom/stryker/terminal/ui/customize/ColorItem;Landroid/view/View;)V

    return-void

    :pswitch_17
    check-cast v10, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    check-cast v9, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;

    invoke-static {v10, v9, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->a(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;Landroid/view/View;)V

    return-void

    :pswitch_18
    check-cast v10, Lcom/nambimobile/widgets/efab/Overlay;

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-static {v10, v9, v1}, Lcom/nambimobile/widgets/efab/Overlay;->a(Lcom/nambimobile/widgets/efab/Overlay;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void

    :pswitch_19
    check-cast v10, Lcom/nambimobile/widgets/efab/FabOption;

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-static {v10, v9, v1}, Lcom/nambimobile/widgets/efab/FabOption;->b(Lcom/nambimobile/widgets/efab/FabOption;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void

    :pswitch_1a
    check-cast v10, Lcom/nambimobile/widgets/efab/ExpandableFab;

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-static {v10, v9, v1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->b(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void

    :pswitch_1b
    check-cast v10, Lcom/google/android/material/snackbar/Snackbar;

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-static {v10, v9, v1}, Lcom/google/android/material/snackbar/Snackbar;->a(Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

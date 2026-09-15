.class public final synthetic Lj2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lj2/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lj2/j;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lj2/j;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Lj2/j;->d:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    const/4 p1, 0x4

    iget v0, p0, Lj2/j;->a:I

    const/4 v1, -0x1

    const v2, 0x7f130163

    const-string v3, ""

    const/4 v4, 0x0

    iget-object v5, p0, Lj2/j;->c:Ljava/lang/Object;

    iget-object v6, p0, Lj2/j;->d:Ljava/lang/Object;

    iget-object v7, p0, Lj2/j;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v7, Lcom/zalexdev/stryker/wifi/Wifi;

    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    check-cast v6, Landroid/app/Dialog;

    sget p1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    invoke-virtual {p1, v3}, Ll4/l;->n0(Ljava/lang/String;)V

    iput-object v3, v7, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    iget-object p1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->g:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->h:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/zalexdev/stryker/wifi/Wifi;->g()V

    :goto_1
    return-void

    :pswitch_0
    check-cast v7, Lo4/q;

    check-cast v5, Lcom/zalexdev/stryker/custom/WiFINetwork;

    check-cast v6, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Ll4/c;->d:Ll4/l;

    invoke-virtual {v1, p1, v0}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    check-cast v7, Lo4/q;

    check-cast v5, Lcom/zalexdev/stryker/custom/WiFINetwork;

    check-cast v6, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Ll4/c;->d:Ll4/l;

    invoke-virtual {v1, p1, v0}, Ll4/l;->k(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    check-cast v7, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    check-cast v6, Landroid/app/Dialog;

    .line 7
    sget p1, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v7, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 9
    iget-object p1, v7, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    const-string v0, "wlan_scan"

    invoke-virtual {p1, v0, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v7, Lcom/zalexdev/stryker/localnetwork/LocalMain;->n:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j()V

    :goto_3
    return-void

    :pswitch_3
    check-cast v7, [Ln3/l;

    check-cast v5, [Z

    check-cast v6, Landroid/app/Dialog;

    .line 10
    sget-object p1, Ln3/h;->a:[Ljava/lang/String;

    .line 11
    aget-object p1, v7, v4

    if-eqz p1, :cond_4

    aget-boolean v0, v5, v4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ln3/l;->c()V

    :cond_4
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_4
    check-cast v7, Landroid/content/Context;

    check-cast v6, Landroid/widget/TextView;

    .line 12
    sget-object v0, Ln3/h;->a:[Ljava/lang/String;

    .line 13
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x103000a

    invoke-direct {v0, v7, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d006f

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#0F0F0F"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_5
    const v1, 0x7f0a028f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0290

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const v3, 0x7f0a028e

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ln3/d;

    invoke-direct {v5, v2, v4}, Ln3/d;-><init>(Landroid/widget/ScrollView;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v5, Ln3/g;

    invoke-direct {v5, v1, v3, v2}, Ln3/g;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ScrollView;)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Ln3/e;

    invoke-direct {v1, v6, v5, v4}, Ln3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v1, 0x7f0a028d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lj2/i;

    invoke-direct {v2, v0, p1}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_5
    check-cast v7, Ls2/e;

    check-cast v5, Lf/n;

    check-cast v6, Ljava/lang/String;

    .line 14
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {v5}, Lf/j0;->dismiss()V

    if-eqz v6, :cond_8

    .line 16
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    :try_start_0
    iget-object p1, v7, Ls2/e;->b:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    iget-object p1, v7, Ls2/e;->c:Landroid/content/Context;

    const v0, 0x7f13047c

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_8
    :goto_5
    return-void

    :pswitch_6
    check-cast v7, Ls2/e;

    check-cast v5, Lcom/zalexdev/stryker/custom/News;

    check-cast v6, Lt2/h;

    .line 17
    iget-object v0, v7, Ls2/e;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget v2, v5, Lcom/zalexdev/stryker/custom/News;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v7, Ls2/e;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    iget-object v8, v7, Ls2/e;->f:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v8, "read"

    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/p1;->getBindingAdapterPosition()I

    move-result v0

    if-eq v0, v1, :cond_9

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 18
    :cond_9
    iget-object v0, v7, Ls2/e;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, v7, Ls2/e;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Lf/n;

    move-result-object v1

    const v2, 0x7f0a0434

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    const v6, 0x7f0a0437

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0a0432

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0433

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a042f

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    const v11, 0x7f0a0430

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/News;->hasImage()Z

    move-result v11

    const/16 v12, 0x8

    if-eqz v11, :cond_a

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v5, Lcom/zalexdev/stryker/custom/News;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v11}, Landroidx/appcompat/widget/h0;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object v2, v5, Lcom/zalexdev/stryker/custom/News;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v5, Lcom/zalexdev/stryker/custom/News;->newsDate:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    const-string v3, "-"

    const-string v6, "."

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 20
    :cond_c
    :goto_7
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v5, Lcom/zalexdev/stryker/custom/News;->description:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/News;->hasArticleLink()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, " "

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<a href=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lcom/zalexdev/stryker/custom/News;->newsUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Ls2/e;->c:Landroid/content/Context;

    const v6, 0x7f13047d

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_d
    iget-boolean v2, v5, Lcom/zalexdev/stryker/custom/News;->actionbutton1:Z

    iget-object v3, v5, Lcom/zalexdev/stryker/custom/News;->actionbutton1text:Ljava/lang/String;

    iget-object v6, v5, Lcom/zalexdev/stryker/custom/News;->actionbutton1url:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 21
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_e
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lj2/j;

    invoke-direct {v2, v7, v1, v6, p1}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :goto_8
    iget-boolean v2, v5, Lcom/zalexdev/stryker/custom/News;->actionbutton2:Z

    iget-object v3, v5, Lcom/zalexdev/stryker/custom/News;->actionbutton2text:Ljava/lang/String;

    iget-object v5, v5, Lcom/zalexdev/stryker/custom/News;->actionbutton2url:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lj2/j;

    invoke-direct {v2, v7, v1, v5, p1}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :goto_9
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_10
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_7
    check-cast v7, Lnet/cachapa/expandablelayout/ExpandableLayout;

    check-cast v5, Landroid/widget/TextView;

    check-cast v6, Ljava/lang/Runnable;

    .line 25
    sget p1, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 26
    invoke-virtual {v7}, Lnet/cachapa/expandablelayout/ExpandableLayout;->toggle()V

    invoke-virtual {v7}, Lnet/cachapa/expandablelayout/ExpandableLayout;->isExpanded()Z

    move-result p1

    if-eqz v5, :cond_12

    if-eqz p1, :cond_11

    const-string v0, "\u25be"

    goto :goto_a

    :cond_11
    const-string v0, "\u25b8"

    :goto_a
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    if-eqz p1, :cond_13

    if-eqz v6, :cond_13

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_13
    return-void

    :pswitch_8
    check-cast v7, Lp2/t;

    check-cast v5, Lcom/zalexdev/stryker/custom/Exploit;

    check-cast v6, Lp2/s;

    .line 27
    iget-object p1, v7, Lp2/t;->d:Ljava/lang/Object;

    check-cast p1, Lp2/o;

    if-eqz p1, :cond_14

    invoke-virtual {v6}, Landroidx/recyclerview/widget/p1;->getBindingAdapterPosition()I

    move-result v0

    sget v1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->i:I

    iget-object p1, p1, Lp2/o;->a:Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v1, Lp2/j;

    invoke-direct {v1, p1}, Lp2/j;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 29
    new-instance v2, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;

    invoke-direct {v2}, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v6, "title"

    invoke-virtual {v3, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "path"

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Exploit;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Exploit;->getArgs()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pattern"

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Exploit;->getSuccesspatern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lang"

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Exploit;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/Exploit;->getIssystem()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "system"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "position"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v1, v2, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->e:Lp2/j;

    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    move-result-object p1

    const-string v0, "arsenal_run_sheet"

    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/u0;Ljava/lang/String;)V

    :cond_14
    return-void

    :pswitch_9
    check-cast v7, [Ljava/lang/String;

    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    check-cast v6, Landroid/app/Dialog;

    .line 31
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 32
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

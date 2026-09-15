.class public final Lr3/t;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/Activity;

.field public c:Ljava/util/ArrayList;

.field public d:Ll4/l;

.field public e:Landroid/app/Dialog;

.field public f:Ljava/lang/String;


# direct methods
.method public static b(Ljava/lang/String;)[B
    .locals 5

    .line 1
    const/4 v0, 0x6

    new-array v1, v0, [B

    const-string v2, "(\\:|\\-)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    if-ne v2, v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    aget-object v3, p0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid hex digit in MAC address."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MAC address."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lr3/t;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "wifi"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_2
    iget v0, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 31
    .line 32
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 33
    .line 34
    and-int/lit16 v2, v0, 0xff

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    shr-int/lit8 v3, v0, 0x8

    .line 41
    .line 42
    and-int/lit16 v3, v3, 0xff

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    shr-int/lit8 v4, v0, 0x10

    .line 49
    .line 50
    and-int/lit16 v4, v4, 0xff

    .line 51
    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    shr-int/lit8 v0, v0, 0x18

    .line 57
    .line 58
    and-int/lit16 v0, v0, 0xff

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v2, "%d.%d.%d.%d"

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public final c(Lcom/zalexdev/stryker/custom/Device;I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    iget-object v1, p0, Lr3/t;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    const v2, 0x7f130165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f130534

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f130164

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f13033b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f130336

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v3, Lcom/stryker/terminal/ui/term/f;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/stryker/terminal/ui/term/f;-><init>(Landroidx/recyclerview/widget/k0;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lr3/t;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zalexdev/stryker/custom/Device;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Device;->isIscutted()Z

    move-result p2

    const v2, 0x7f1304b4

    const v3, 0x7f13076f

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f130338

    invoke-virtual {p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p2

    const v0, 0x7f130337

    invoke-virtual {p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p2

    new-instance v0, Lr3/k;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lr3/k;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    invoke-virtual {p2, v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/setup/a;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    :goto_1
    invoke-virtual {p1, v2, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13033d

    invoke-virtual {p2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p2

    const v1, 0x7f13033c

    invoke-virtual {p2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p2

    new-instance v1, Lr3/k;

    invoke-direct {v1, p0, p1, v0}, Lr3/k;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    invoke-virtual {p2, v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/setup/a;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final d(Lcom/zalexdev/stryker/custom/Device;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, v0, Lr3/t;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lr3/t;->e:Landroid/app/Dialog;

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lr3/t;->f:Ljava/lang/String;

    iget-object v2, v0, Lr3/t;->e:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v2, v0, Lr3/t;->e:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v2, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v4, 0x7f0d0086

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v2, v0, Lr3/t;->e:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v2, v5, v6}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    iget-object v2, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v5, 0x7f0a0199

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v6, 0x7f0a019a

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v7, 0x7f0a019b

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v8, 0x7f0a04d1

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v9, 0x7f0a0197

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v10, 0x7f0a0111

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v11, 0x7f0a0420

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v12, 0x7f0a0353

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iget-object v12, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v13, 0x7f0a0352

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v14, 0x7f0a0708

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iget-object v14, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v15, 0x7f0a020e

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v3, 0x7f0a053b

    invoke-virtual {v15, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v15, v0, Lr3/t;->e:Landroid/app/Dialog;

    const v4, 0x7f0a0459

    invoke-virtual {v15, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v15, v0, Lr3/t;->e:Landroid/app/Dialog;

    move-object/from16 v16, v3

    const v3, 0x7f0a00e5

    invoke-virtual {v15, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v15, v0, Lr3/t;->e:Landroid/app/Dialog;

    move-object/from16 v17, v13

    const v13, 0x7f0a05a9

    invoke-virtual {v15, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iget-object v15, v0, Lr3/t;->e:Landroid/app/Dialog;

    move-object/from16 v18, v12

    const v12, 0x7f0a02d5

    invoke-virtual {v15, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    iget-object v15, v0, Lr3/t;->e:Landroid/app/Dialog;

    move-object/from16 v19, v11

    const v11, 0x7f0a02d6

    invoke-virtual {v15, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    iget-object v15, v0, Lr3/t;->e:Landroid/app/Dialog;

    move-object/from16 v20, v14

    const v14, 0x7f0a02d7

    invoke-virtual {v15, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    iget-object v15, v0, Lr3/t;->e:Landroid/app/Dialog;

    move-object/from16 v21, v10

    const v10, 0x7f0a02d8

    invoke-virtual {v15, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->portsToString()Ljava/util/ArrayList;

    move-result-object v10

    const-string v15, "443"

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v22, v3

    iget-object v3, v0, Lr3/t;->a:Landroid/content/Context;

    if-eqz v15, :cond_1

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f0801dd

    invoke-virtual {v12, v15}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    const v15, 0x7f130319

    invoke-virtual {v3, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v15, Lr3/g;

    move-object/from16 v23, v4

    const/4 v4, 0x2

    invoke-direct {v15, v0, v1, v4}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    move-object/from16 v23, v4

    :goto_0
    const-string v4, "80"

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0801dd

    invoke-virtual {v12, v4}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    const v4, 0x7f130318

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lr3/g;

    const/4 v15, 0x6

    invoke-direct {v4, v0, v1, v15}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    invoke-virtual {v12, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string v4, "21"

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "445"

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0800d7

    invoke-virtual {v11, v4}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    const v4, 0x7f130317

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lr3/g;

    const/4 v12, 0x7

    invoke-direct {v4, v0, v1, v12}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const-string v4, "22"

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0801c8

    invoke-virtual {v14, v4}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    const v4, 0x7f13031a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lr3/g;

    const/16 v10, 0x8

    invoke-direct {v4, v0, v1, v10}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    invoke-virtual {v14, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v2, v0, Lr3/t;->d:Ll4/l;

    const-string v4, "hide"

    invoke-virtual {v2, v4}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "XX:XX:XX:XX:XX:XX"

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getOs()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getOs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getOs()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_9
    :goto_3
    const v2, 0x7f13032e

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getPorts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->getImage()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/zalexdev/stryker/custom/Device;->isShim()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    goto :goto_5

    :cond_a
    invoke-virtual {v13}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    :goto_5
    new-instance v2, Lr3/g;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v1, v3}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/g;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v1, v3}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    move-object/from16 v3, v23

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/g;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v1, v3}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/a;

    move/from16 v3, p2

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Lr3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v3, v21

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/g;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v1, v3}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/h;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lr3/h;-><init>(Lr3/t;I)V

    move-object/from16 v4, v20

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/h;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v4}, Lr3/h;-><init>(Lr3/t;I)V

    move-object/from16 v4, v19

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/g;

    invoke-direct {v2, v0, v1, v3}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/g;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lr3/g;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v1, v3}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lr3/t;->e:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lr3/t;->b:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    iget-object p1, p0, Lr3/t;->a:Landroid/content/Context;

    .line 19
    .line 20
    const v0, 0x7f130500

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lr3/l;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p0, p1, v1}, Lr3/l;-><init>(Lr3/t;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lr3/t;->b:Landroid/app/Activity;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final f(Ljava/util/ArrayList;)V
    .locals 29

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v15, Landroid/app/Dialog;

    .line 11
    .line 12
    iget-object v0, v14, Lr3/t;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v15, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0d0053

    .line 18
    .line 19
    .line 20
    invoke-virtual {v15, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 31
    .line 32
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    const/4 v4, -0x2

    .line 40
    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const v1, 0x7f0a01d9

    .line 44
    .line 45
    .line 46
    invoke-virtual {v15, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v13, v1

    .line 51
    check-cast v13, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 52
    .line 53
    const v1, 0x7f0a01df

    .line 54
    .line 55
    .line 56
    invoke-virtual {v15, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v12, v1

    .line 61
    check-cast v12, Landroid/widget/TextView;

    .line 62
    .line 63
    const v1, 0x7f0a0122

    .line 64
    .line 65
    .line 66
    invoke-virtual {v15, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object/from16 v16, v1

    .line 71
    .line 72
    check-cast v16, Landroid/widget/ProgressBar;

    .line 73
    .line 74
    const v1, 0x7f0a01d6

    .line 75
    .line 76
    .line 77
    invoke-virtual {v15, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object/from16 v17, v1

    .line 82
    .line 83
    check-cast v17, Landroid/widget/ImageView;

    .line 84
    .line 85
    const v1, 0x7f0a01dc

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move-object v11, v1

    .line 93
    check-cast v11, Landroid/widget/TextView;

    .line 94
    .line 95
    const v1, 0x7f0a01de

    .line 96
    .line 97
    .line 98
    invoke-virtual {v15, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    move-object/from16 v18, v1

    .line 103
    .line 104
    check-cast v18, Landroid/widget/ScrollView;

    .line 105
    .line 106
    const v1, 0x7f0a01d4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v15, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    move-object v10, v1

    .line 114
    check-cast v10, Landroid/widget/TextView;

    .line 115
    .line 116
    new-instance v1, Lj2/i;

    .line 117
    .line 118
    const/4 v3, 0x5

    .line 119
    invoke-direct {v1, v15, v3}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v15, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    .line 129
    .line 130
    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    filled-new-array {v2}, [I

    .line 141
    .line 142
    .line 143
    move-result-object v19

    .line 144
    filled-new-array {v2}, [I

    .line 145
    .line 146
    .line 147
    move-result-object v20

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v21

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const v3, 0x7f1300a5

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v1, Lr3/d;

    .line 177
    .line 178
    invoke-direct {v1, v12, v0, v2}, Lr3/d;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v14, Lr3/t;->b:Landroid/app/Activity;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Lr3/m;

    .line 187
    .line 188
    invoke-direct {v0, v13, v9, v2}, Lr3/m;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicator;II)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v14, Lr3/t;->b:Landroid/app/Activity;

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v22

    .line 200
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    .line 206
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    move-object v3, v0

    .line 211
    check-cast v3, Lcom/zalexdev/stryker/custom/Exploit;

    .line 212
    .line 213
    new-instance v8, Ljava/lang/Thread;

    .line 214
    .line 215
    new-instance v7, Lr3/n;

    .line 216
    .line 217
    move-object v0, v7

    .line 218
    move-object/from16 v1, p0

    .line 219
    .line 220
    move-object v2, v12

    .line 221
    move-object v4, v11

    .line 222
    move-object/from16 v5, v18

    .line 223
    .line 224
    move-object/from16 v6, v19

    .line 225
    .line 226
    move-object v14, v7

    .line 227
    move-object/from16 v7, v20

    .line 228
    .line 229
    move-object/from16 v23, v15

    .line 230
    .line 231
    move-object v15, v8

    .line 232
    move-object/from16 v8, v21

    .line 233
    .line 234
    move/from16 v24, v9

    .line 235
    .line 236
    move-object v9, v13

    .line 237
    move-object/from16 v25, v10

    .line 238
    .line 239
    move/from16 v10, v24

    .line 240
    .line 241
    move-object/from16 v26, v11

    .line 242
    .line 243
    move-object/from16 v11, v16

    .line 244
    .line 245
    move-object/from16 v27, v12

    .line 246
    .line 247
    move-object/from16 v12, v17

    .line 248
    .line 249
    move-object/from16 v28, v13

    .line 250
    .line 251
    move-object/from16 v13, v25

    .line 252
    .line 253
    invoke-direct/range {v0 .. v13}, Lr3/n;-><init>(Lr3/t;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/Exploit;Landroid/widget/TextView;Landroid/widget/ScrollView;[I[ILjava/util/List;Lcom/google/android/material/progressindicator/LinearProgressIndicator;ILandroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v15, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 260
    .line 261
    .line 262
    move-object/from16 v14, p0

    .line 263
    .line 264
    move-object/from16 v15, v23

    .line 265
    .line 266
    move/from16 v9, v24

    .line 267
    .line 268
    move-object/from16 v10, v25

    .line 269
    .line 270
    move-object/from16 v11, v26

    .line 271
    .line 272
    move-object/from16 v12, v27

    .line 273
    .line 274
    move-object/from16 v13, v28

    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_2
    move-object/from16 v23, v15

    .line 278
    .line 279
    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->show()V

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public final g(Lcom/zalexdev/stryker/custom/Device;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    new-array v2, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v2, v1

    new-instance v8, Landroid/app/Dialog;

    iget-object v3, p0, Lr3/t;->b:Landroid/app/Activity;

    invoke-direct {v8, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x7f0d0087

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v4, v5}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    const v0, 0x7f0a04d6

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v4, 0x7f0a0464

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    const v4, 0x7f0a04d8

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v4, 0x7f0a04d9

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    new-instance v5, Ls2/e;

    iget-object v7, p0, Lr3/t;->a:Landroid/content/Context;

    invoke-direct {v5, v7, v3, p1}, Ls2/e;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/zalexdev/stryker/custom/Device;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    const v3, 0x7f0a05b2

    invoke-virtual {v8, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    const v3, 0x7f0a04f2

    invoke-virtual {v8, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a04f3

    invoke-virtual {v8, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Device;->getPorts()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f130341

    invoke-virtual {v7, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Device;->getPorts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Device;->getNmapoutput()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v10, Lr3/i;

    move-object v1, v10

    move-object v3, v0

    move-object v4, v5

    move-object v5, p1

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lr3/i;-><init>([ZLandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcom/zalexdev/stryker/custom/Device;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p1

    .line 6
    .line 7
    check-cast v3, Lr3/s;

    .line 8
    .line 9
    iget-object v0, v1, Lr3/t;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v4, v0

    .line 16
    check-cast v4, Lcom/zalexdev/stryker/custom/Device;

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lr3/t;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v7, v3, Lr3/s;->a:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v7, v1, Lr3/t;->d:Ll4/l;

    .line 40
    .line 41
    invoke-virtual {v7, v0}, Ll4/l;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v8, " "

    .line 46
    .line 47
    const-string v9, ""

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_2

    .line 60
    .line 61
    :cond_0
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getVendor()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    sget-object v0, Lt3/g;->a:Ljava/util/regex/Pattern;

    .line 68
    .line 69
    move-object v0, v9

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    sget-object v10, Lt3/g;->a:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v10, "\\s+"

    .line 82
    .line 83
    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    iget-object v11, v1, Lr3/t;->a:Landroid/content/Context;

    .line 100
    .line 101
    if-eqz v10, :cond_3

    .line 102
    .line 103
    const v0, 0x7f13035e

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_3
    iget-object v10, v3, Lr3/s;->c:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v12, 0x1

    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_8

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v14, "SELECT manufacture,model FROM codename WHERE codename = \'"

    .line 151
    .line 152
    :try_start_0
    iget-object v15, v7, Ll4/l;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    .line 154
    const/4 v13, 0x0

    .line 155
    if-eqz v15, :cond_4

    .line 156
    .line 157
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    if-nez v15, :cond_5

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    move-object v8, v9

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    :goto_1
    const-string v15, "/data/data/com.zalexdev.stryker/files/codenames.db"

    .line 168
    .line 169
    invoke-static {v15, v13, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    iput-object v15, v7, Ll4/l;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 174
    .line 175
    :cond_5
    iget-object v15, v7, Ll4/l;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 176
    .line 177
    new-instance v12, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, "\';"

    .line 186
    .line 187
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-eqz v12, :cond_6

    .line 203
    .line 204
    new-instance v12, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const/4 v13, 0x0

    .line 210
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const/4 v8, 0x1

    .line 221
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_2

    .line 241
    :cond_6
    move-object v8, v9

    .line 242
    :goto_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :catch_1
    move-exception v0

    .line 247
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    .line 249
    .line 250
    :goto_4
    :try_start_2
    invoke-static {v8}, Ll4/l;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 254
    :catch_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    const/4 v12, 0x2

    .line 259
    if-le v0, v12, :cond_7

    .line 260
    .line 261
    invoke-virtual {v4, v8}, Lcom/zalexdev/stryker/custom/Device;->setVendor(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    const-string v0, "Android"

    .line 268
    .line 269
    invoke-virtual {v4, v0}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v8, " ("

    .line 285
    .line 286
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v8, ")"

    .line 297
    .line 298
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object v8, v3, Lr3/s;->a:Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    :cond_8
    const-string v0, "hide"

    .line 311
    .line 312
    invoke-virtual {v7, v0}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    iget-object v7, v3, Lr3/s;->b:Landroid/widget/TextView;

    .line 317
    .line 318
    if-nez v0, :cond_b

    .line 319
    .line 320
    if-eqz v6, :cond_9

    .line 321
    .line 322
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_a

    .line 331
    .line 332
    :cond_9
    const-string v6, "\u2014"

    .line 333
    .line 334
    :cond_a
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_b
    const-string v0, "XX:XX:XX:XX:XX:XX"

    .line 339
    .line 340
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    :goto_5
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->isShim()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    iget-object v6, v3, Lr3/s;->l:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 348
    .line 349
    if-eqz v0, :cond_c

    .line 350
    .line 351
    const/4 v7, 0x1

    .line 352
    invoke-virtual {v6, v7}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_c
    invoke-virtual {v6}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    .line 357
    .line 358
    .line 359
    iget-object v0, v1, Lr3/t;->e:Landroid/app/Dialog;

    .line 360
    .line 361
    if-eqz v0, :cond_d

    .line 362
    .line 363
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    iget-object v6, v1, Lr3/t;->f:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_d

    .line 380
    .line 381
    iget-object v0, v1, Lr3/t;->e:Landroid/app/Dialog;

    .line 382
    .line 383
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v4, v2}, Lr3/t;->d(Lcom/zalexdev/stryker/custom/Device;I)V

    .line 387
    .line 388
    .line 389
    :cond_d
    :goto_6
    iget-object v0, v3, Lr3/s;->e:Landroid/widget/ImageView;

    .line 390
    .line 391
    const/16 v6, 0x8

    .line 392
    .line 393
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    iget-object v7, v3, Lr3/s;->f:Landroid/widget/ImageView;

    .line 397
    .line 398
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    iget-object v8, v3, Lr3/s;->g:Landroid/widget/ImageView;

    .line 402
    .line 403
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    .line 405
    .line 406
    iget-object v10, v3, Lr3/s;->h:Landroid/widget/ImageView;

    .line 407
    .line 408
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    iget-object v10, v3, Lr3/s;->i:Landroid/widget/ImageView;

    .line 412
    .line 413
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->portsToString()Ljava/util/ArrayList;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    const-string v12, "80"

    .line 421
    .line 422
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v12

    .line 426
    if-nez v12, :cond_e

    .line 427
    .line 428
    const-string v12, "443"

    .line 429
    .line 430
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v12

    .line 434
    if-nez v12, :cond_e

    .line 435
    .line 436
    const-string v12, "8080"

    .line 437
    .line 438
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v12

    .line 442
    if-nez v12, :cond_e

    .line 443
    .line 444
    const-string v12, "8000"

    .line 445
    .line 446
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v12

    .line 450
    if-eqz v12, :cond_f

    .line 451
    .line 452
    :cond_e
    const/4 v12, 0x0

    .line 453
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    .line 455
    .line 456
    const v12, 0x7f0801dd

    .line 457
    .line 458
    .line 459
    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 460
    .line 461
    .line 462
    move-result-object v12

    .line 463
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    .line 465
    .line 466
    :cond_f
    const-string v0, "445"

    .line 467
    .line 468
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-nez v0, :cond_10

    .line 473
    .line 474
    const-string v0, "21"

    .line 475
    .line 476
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-eqz v0, :cond_11

    .line 481
    .line 482
    :cond_10
    const/4 v12, 0x0

    .line 483
    goto :goto_7

    .line 484
    :cond_11
    const/4 v12, 0x0

    .line 485
    goto :goto_8

    .line 486
    :goto_7
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    const v0, 0x7f0800d7

    .line 490
    .line 491
    .line 492
    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    .line 498
    .line 499
    :goto_8
    const-string v0, "22"

    .line 500
    .line 501
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_12

    .line 506
    .line 507
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    .line 509
    .line 510
    const v0, 0x7f0801c8

    .line 511
    .line 512
    .line 513
    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    .line 519
    .line 520
    :cond_12
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getOs()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    const-string v7, "Unknown"

    .line 525
    .line 526
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_13

    .line 531
    .line 532
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->guessos()V

    .line 533
    .line 534
    .line 535
    :cond_13
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getImage()I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    iget-object v7, v3, Lr3/s;->d:Landroid/widget/ImageView;

    .line 544
    .line 545
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-eqz v0, :cond_14

    .line 557
    .line 558
    const v0, 0x7f0801a3

    .line 559
    .line 560
    .line 561
    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    .line 567
    .line 568
    :cond_14
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->isIscutted()Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-eqz v0, :cond_15

    .line 573
    .line 574
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 575
    .line 576
    const v0, 0x7f060302

    .line 577
    .line 578
    .line 579
    :goto_9
    invoke-static {v11, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    goto/16 :goto_d

    .line 584
    .line 585
    :cond_15
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-eqz v0, :cond_16

    .line 594
    .line 595
    const-string v0, "#AB47BC"

    .line 596
    .line 597
    :goto_a
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    goto/16 :goto_d

    .line 602
    .line 603
    :cond_16
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getOs()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    if-nez v0, :cond_17

    .line 608
    .line 609
    goto :goto_b

    .line 610
    :cond_17
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->getOs()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 615
    .line 616
    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v9

    .line 620
    :goto_b
    const-string v0, "windows"

    .line 621
    .line 622
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-eqz v0, :cond_18

    .line 627
    .line 628
    const-string v0, "#1565C0"

    .line 629
    .line 630
    goto :goto_a

    .line 631
    :cond_18
    const-string v0, "linux"

    .line 632
    .line 633
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_19

    .line 638
    .line 639
    const-string v0, "#EF6C00"

    .line 640
    .line 641
    goto :goto_a

    .line 642
    :cond_19
    const-string v0, "mac"

    .line 643
    .line 644
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-nez v0, :cond_1e

    .line 649
    .line 650
    const-string v0, "ios"

    .line 651
    .line 652
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    if-nez v0, :cond_1e

    .line 657
    .line 658
    const-string v0, "apple"

    .line 659
    .line 660
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-eqz v0, :cond_1a

    .line 665
    .line 666
    goto :goto_c

    .line 667
    :cond_1a
    const-string v0, "android"

    .line 668
    .line 669
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    if-eqz v0, :cond_1b

    .line 674
    .line 675
    const-string v0, "#2E7D32"

    .line 676
    .line 677
    goto :goto_a

    .line 678
    :cond_1b
    const-string v0, "camera"

    .line 679
    .line 680
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    if-eqz v0, :cond_1c

    .line 685
    .line 686
    const-string v0, "#00897B"

    .line 687
    .line 688
    goto :goto_a

    .line 689
    :cond_1c
    const-string v0, "printer"

    .line 690
    .line 691
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    if-eqz v0, :cond_1d

    .line 696
    .line 697
    const-string v0, "#3949AB"

    .line 698
    .line 699
    goto :goto_a

    .line 700
    :cond_1d
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 701
    .line 702
    const v0, 0x7f060074

    .line 703
    .line 704
    .line 705
    goto :goto_9

    .line 706
    :cond_1e
    :goto_c
    const-string v0, "#5E35B1"

    .line 707
    .line 708
    goto :goto_a

    .line 709
    :goto_d
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    iget-object v5, v3, Lr3/s;->j:Landroid/widget/TextView;

    .line 721
    .line 722
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    .line 724
    .line 725
    new-instance v0, Lr3/a;

    .line 726
    .line 727
    const/4 v7, 0x0

    .line 728
    invoke-direct {v0, v1, v4, v2, v7}, Lr3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 729
    .line 730
    .line 731
    iget-object v8, v3, Lr3/s;->m:Landroid/view/View;

    .line 732
    .line 733
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/Device;->isShim()Z

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    iget-object v8, v3, Lr3/s;->k:Landroid/view/View;

    .line 741
    .line 742
    if-nez v0, :cond_1f

    .line 743
    .line 744
    new-instance v0, Lr3/g;

    .line 745
    .line 746
    invoke-direct {v0, v1, v4, v7}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    .line 751
    .line 752
    new-instance v0, Lr3/g;

    .line 753
    .line 754
    const/4 v9, 0x1

    .line 755
    invoke-direct {v0, v1, v4, v9}, Lr3/g;-><init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V

    .line 756
    .line 757
    .line 758
    :goto_e
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    .line 760
    .line 761
    goto :goto_f

    .line 762
    :cond_1f
    const/4 v9, 0x1

    .line 763
    new-instance v0, Lr3/h;

    .line 764
    .line 765
    invoke-direct {v0, v1, v7}, Lr3/h;-><init>(Lr3/t;I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    .line 770
    .line 771
    new-instance v0, Lr3/h;

    .line 772
    .line 773
    invoke-direct {v0, v1, v9}, Lr3/h;-><init>(Lr3/t;I)V

    .line 774
    .line 775
    .line 776
    goto :goto_e

    .line 777
    :goto_f
    iget-object v0, v1, Lr3/t;->c:Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    sub-int/2addr v0, v9

    .line 784
    if-ne v2, v0, :cond_20

    .line 785
    .line 786
    move v13, v6

    .line 787
    goto :goto_10

    .line 788
    :cond_20
    move v13, v7

    .line 789
    :goto_10
    iget-object v0, v3, Lr3/s;->n:Landroid/view/View;

    .line 790
    .line 791
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 792
    .line 793
    .line 794
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget-object p2, p0, Lr3/t;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d0085

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lr3/s;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a036b

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v0, p2, Lr3/s;->a:Landroid/widget/TextView;

    .line 30
    .line 31
    const v0, 0x7f0a0370

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p2, Lr3/s;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    const v0, 0x7f0a0369

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .line 51
    iput-object v0, p2, Lr3/s;->d:Landroid/widget/ImageView;

    .line 52
    .line 53
    const v0, 0x7f0a0372

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p2, Lr3/s;->j:Landroid/widget/TextView;

    .line 63
    .line 64
    const v0, 0x7f0a04d3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p2, Lr3/s;->k:Landroid/view/View;

    .line 72
    .line 73
    const v0, 0x7f0a0371

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object v0, p2, Lr3/s;->c:Landroid/widget/TextView;

    .line 83
    .line 84
    const v0, 0x7f0a036c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p2, Lr3/s;->m:Landroid/view/View;

    .line 92
    .line 93
    const v0, 0x7f0a05aa

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 101
    .line 102
    iput-object v0, p2, Lr3/s;->l:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 103
    .line 104
    const v0, 0x7f0a02d9

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/ImageView;

    .line 112
    .line 113
    iput-object v0, p2, Lr3/s;->e:Landroid/widget/ImageView;

    .line 114
    .line 115
    const v0, 0x7f0a02da

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .line 124
    iput-object v0, p2, Lr3/s;->f:Landroid/widget/ImageView;

    .line 125
    .line 126
    const v0, 0x7f0a02db

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .line 135
    iput-object v0, p2, Lr3/s;->g:Landroid/widget/ImageView;

    .line 136
    .line 137
    const v0, 0x7f0a02dc

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/ImageView;

    .line 145
    .line 146
    iput-object v0, p2, Lr3/s;->h:Landroid/widget/ImageView;

    .line 147
    .line 148
    const v0, 0x7f0a02dd

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .line 157
    iput-object v0, p2, Lr3/s;->i:Landroid/widget/ImageView;

    .line 158
    .line 159
    const v0, 0x7f0a036d

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p2, Lr3/s;->n:Landroid/view/View;

    .line 167
    .line 168
    return-object p2
.end method

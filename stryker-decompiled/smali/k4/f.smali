.class public final Lk4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public final b:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field public final c:Lf3/b;

.field public final d:Lk4/h;

.field public e:Ljava/lang/String;

.field public f:Landroidx/activity/result/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0x[0-9a-fA-F]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk4/f;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lf3/b;Lk4/h;)V
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v15, Lk4/f;->a:Landroidx/fragment/app/Fragment;

    iput-object v0, v15, Lk4/f;->c:Lf3/b;

    move-object/from16 v2, p3

    iput-object v2, v15, Lk4/f;->d:Lk4/h;

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v3, 0x7f14030c

    invoke-direct {v2, v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, v15, Lk4/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f0d002d

    invoke-virtual {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(I)V

    .line 1
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v1, 0x7f0a00da

    invoke-virtual {v2, v1}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    const v4, 0x7f0a00d0

    invoke-virtual {v2, v4}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    const v5, 0x7f0a00db

    invoke-virtual {v2, v5}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    const v6, 0x7f0a00d6

    invoke-virtual {v2, v6}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    const v7, 0x7f0a00ca

    invoke-virtual {v2, v7}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    const v7, 0x7f0a00d7

    invoke-virtual {v2, v7}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/google/android/material/textfield/TextInputEditText;

    const v7, 0x7f0a00d9

    invoke-virtual {v2, v7}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/google/android/material/textfield/TextInputEditText;

    const v7, 0x7f0a00d2

    invoke-virtual {v2, v7}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const v7, 0x7f0a00c5

    invoke-virtual {v2, v7}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/chip/Chip;

    const v8, 0x7f0a00c6

    invoke-virtual {v2, v8}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/chip/Chip;

    const v9, 0x7f0a00c7

    invoke-virtual {v2, v9}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/chip/Chip;

    const v10, 0x7f0a00c8

    invoke-virtual {v2, v10}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/chip/Chip;

    move-object/from16 p1, v3

    const v3, 0x7f0a00c4

    invoke-virtual {v2, v3}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/chip/Chip;

    const v15, 0x7f0a00c3

    invoke-virtual {v2, v15}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/chip/Chip;

    move-object/from16 p3, v15

    const v15, 0x7f0a00cf

    invoke-virtual {v2, v15}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v16, v15

    const v15, 0x7f0a00ce

    invoke-virtual {v2, v15}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-object/from16 v17, v15

    const v15, 0x7f0a00cb

    invoke-virtual {v2, v15}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-object/from16 v18, v15

    const v15, 0x7f0a00cc

    invoke-virtual {v2, v15}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/textview/MaterialTextView;

    move-object/from16 v19, v15

    const v15, 0x7f0a00cd

    invoke-virtual {v2, v15}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    move-object/from16 v20, v15

    const v15, 0x7f0a00d8

    invoke-virtual {v2, v15}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    move-object/from16 v21, v15

    const v15, 0x7f0a00c2

    invoke-virtual {v2, v15}, Lf/j0;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_4

    const v15, 0x7f130081

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lf3/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lf3/b;->e:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lf3/b;->f:Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lf3/b;->g:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lf3/b;->h:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lf3/b;->i:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lf3/b;->c:I

    invoke-static {v1}, Lo/i;->c(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v15, 0x1

    if-eq v1, v15, :cond_1

    const/4 v15, 0x2

    if-eq v1, v15, :cond_0

    const v1, 0x7f0a00d1

    :goto_0
    invoke-virtual {v11, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    goto :goto_1

    :cond_0
    const v1, 0x7f0a00d3

    goto :goto_0

    :cond_1
    const v1, 0x7f0a00d4

    goto :goto_0

    :cond_2
    const v1, 0x7f0a00d5

    goto :goto_0

    :goto_1
    sget-object v1, Lf3/a;->c:Lf3/a;

    iget-object v15, v0, Lf3/b;->d:Ljava/util/Set;

    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    sget-object v1, Lf3/a;->d:Lf3/a;

    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    sget-object v1, Lf3/a;->e:Lf3/a;

    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    sget-object v1, Lf3/a;->f:Lf3/a;

    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v10, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    sget-object v1, Lf3/a;->g:Lf3/a;

    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    sget-object v1, Lf3/a;->h:Lf3/a;

    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v15, p3

    invoke-virtual {v15, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-boolean v1, v0, Lf3/b;->l:Z

    move-object/from16 v15, v17

    invoke-virtual {v15, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    iget-boolean v1, v0, Lf3/b;->m:Z

    move-object/from16 v15, v18

    invoke-virtual {v15, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    iget-object v0, v0, Lf3/b;->k:Ljava/lang/String;

    move-object/from16 v1, p0

    if-eqz v0, :cond_3

    iput-object v0, v1, Lk4/f;->e:Ljava/lang/String;

    move-object/from16 v18, v3

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move-object/from16 v18, v3

    goto :goto_2

    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v15, v18

    const v0, 0x7f0a00d1

    move-object/from16 v18, v3

    invoke-virtual {v11, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    const-string v0, "0x046d"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0xc31c"

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Logitech"

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "USB Keyboard"

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "STRYKER000"

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    :goto_2
    new-instance v0, Lcom/google/android/material/chip/a;

    const/4 v3, 0x3

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    invoke-direct {v0, v11, v3}, Lcom/google/android/material/chip/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v0}, Lcom/google/android/material/chip/Chip;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lk4/d;

    invoke-direct {v0, v1, v3}, Lk4/d;-><init>(Lk4/f;I)V

    move-object/from16 v3, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lk4/d;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lk4/d;-><init>(Lk4/f;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lk4/e;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v16, v18

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, v16

    move-object/from16 v22, v11

    move-object/from16 v16, v19

    move-object/from16 v11, p3

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v17

    move-object/from16 v23, v21

    move-object/from16 v17, v15

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v17}, Lk4/e;-><init>(Lk4/f;Landroid/content/Context;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    move-object/from16 v0, v22

    move-object/from16 v15, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.class public Lcom/zalexdev/stryker/appintro/slides/Slide1;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Ll4/l;

.field public c:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0d00c3

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v3

    iput-object v3, v0, Lcom/zalexdev/stryker/appintro/slides/Slide1;->a:Landroidx/fragment/app/a0;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ll4/l;

    invoke-direct {v4, v3}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/Slide1;->b:Ll4/l;

    iget-object v3, v0, Lcom/zalexdev/stryker/appintro/slides/Slide1;->a:Landroidx/fragment/app/a0;

    const v4, 0x7f0a06a4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v3, v0, Lcom/zalexdev/stryker/appintro/slides/Slide1;->c:Landroidx/viewpager2/widget/ViewPager2;

    const v3, 0x7f0a0384

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const v4, 0x7f0a05b7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/material/checkbox/MaterialCheckBox;

    const v4, 0x7f0a05b8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/google/android/material/checkbox/MaterialCheckBox;

    const v4, 0x7f0a05b9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/google/android/material/checkbox/MaterialCheckBox;

    const v4, 0x7f0a0144

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/LinearLayout;

    const v4, 0x7f0a0145

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/LinearLayout;

    const v4, 0x7f0a0146

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/LinearLayout;

    new-instance v9, Lj2/b;

    const/16 v16, 0x2

    move-object v4, v9

    move-object v5, v3

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object/from16 p1, v1

    move-object v1, v9

    move/from16 v9, v16

    invoke-direct/range {v4 .. v9}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v4, Lo2/a;

    invoke-direct {v4, v10, v1, v2}, Lo2/a;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;Lj2/b;I)V

    invoke-virtual {v13, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lo2/a;

    const/4 v4, 0x1

    invoke-direct {v2, v11, v1, v4}, Lo2/a;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;Lj2/b;I)V

    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lo2/a;

    const/4 v4, 0x2

    invoke-direct {v2, v12, v1, v4}, Lo2/a;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;Lj2/b;I)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/nambimobile/widgets/efab/a;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.class public final synthetic Ld4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/nuclei/NucleiMain;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/nuclei/NucleiMain;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld4/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld4/h;->b:Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Ld4/h;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/h;->b:Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/nuclei/NucleiMain;->p:I

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p1, Landroid/app/Dialog;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0d004a

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, -0x1

    .line 52
    const/4 v3, -0x2

    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 54
    .line 55
    .line 56
    :cond_0
    const v0, 0x7f0a048f

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    move-object v2, v0

    .line 64
    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 65
    .line 66
    const v0, 0x7f0a0481

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v3, v0

    .line 74
    check-cast v3, Lcom/google/android/material/chip/ChipGroup;

    .line 75
    .line 76
    const v0, 0x7f0a0485

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    move-object v6, v0

    .line 84
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 85
    .line 86
    const v0, 0x7f0a046e

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 94
    .line 95
    new-instance v4, Lj2/i;

    .line 96
    .line 97
    const/16 v5, 0x9

    .line 98
    .line 99
    invoke-direct {v4, p1, v5}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    new-instance v7, Lcom/stryker/terminal/ui/other/a;

    .line 106
    .line 107
    const/4 v5, 0x4

    .line 108
    move-object v0, v7

    .line 109
    move-object v4, p1

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/ui/other/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_0
    iget-object p1, v1, Lcom/zalexdev/stryker/nuclei/NucleiMain;->h:Landroid/widget/EditText;

    .line 121
    .line 122
    const-string v0, ""

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

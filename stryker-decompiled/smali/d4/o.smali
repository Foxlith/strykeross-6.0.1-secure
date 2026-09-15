.class public final Ld4/o;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld4/o;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 5

    .line 1
    check-cast p1, Ld4/n;

    .line 2
    .line 3
    iget-object v0, p0, Ld4/o;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ld4/m;

    .line 10
    .line 11
    iget-object v0, p1, Ld4/n;->a:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v1, p2, Ld4/m;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Ld4/n;->b:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v1, p2, Ld4/m;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const v3, 0x10d45

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v2, v3, :cond_2

    .line 34
    .line 35
    const v3, 0x1332e

    .line 36
    .line 37
    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    const v3, 0x225cae

    .line 41
    .line 42
    .line 43
    if-eq v2, v3, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v2, "INFO"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    move v1, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string v2, "OUT"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string v2, "ERR"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    const/4 v1, -0x1

    .line 77
    :goto_1
    iget-object p1, p1, Ld4/n;->c:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    if-eq v1, v4, :cond_4

    .line 82
    .line 83
    const v1, -0x811879

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    const v0, -0x19120d

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    const v1, -0x2d5701

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const v1, -0x848e

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    const/16 v0, -0x5e68

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :goto_3
    iget-object p2, p2, Ld4/m;->c:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0d007a

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Ld4/n;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Ld4/n;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

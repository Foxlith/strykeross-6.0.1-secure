.class public Lcom/zalexdev/stryker/metasploit/InstallMetasploit;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Landroidx/fragment/app/u0;

.field public e:Lcom/google/android/material/button/MaterialButton;

.field public f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/google/android/material/card/MaterialCardView;

.field public l:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/TextView;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Ln2/c;

.field public final q:Ljava/util/EnumMap;

.field public final r:Ljava/util/LinkedHashMap;

.field public s:Z

.field public final t:Lf/d0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ly3/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->q:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->r:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->s:Z

    new-instance v0, Lf/d0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lf/d0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->t:Lf/d0;

    return-void
.end method


# virtual methods
.method public final d(Ln2/e;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lv3/g;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lw3/h;Lw3/g;)V
    .locals 8

    .line 1
    iput-object p2, p1, Lw3/h;->e:Lw3/g;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    iget-object v4, p1, Lw3/h;->c:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    iget-object v5, p1, Lw3/h;->a:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v6, p1, Lw3/h;->b:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eq p2, v0, :cond_2

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq p2, v7, :cond_1

    .line 22
    .line 23
    const/4 v7, 0x3

    .line 24
    if-eq p2, v7, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 27
    .line 28
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 29
    .line 30
    const v0, 0x7f060074

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 48
    .line 49
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 50
    .line 51
    const v7, 0x7f060302

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    const v2, 0x7f0800d0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 71
    .line 72
    invoke-virtual {v6, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v5, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 80
    .line 81
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 82
    .line 83
    const v0, 0x7f060073

    .line 84
    .line 85
    .line 86
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    const v0, 0x7f0800c9

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    .line 101
    .line 102
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 103
    .line 104
    invoke-virtual {v6, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 109
    .line 110
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 111
    .line 112
    const v7, 0x7f060316

    .line 113
    .line 114
    .line 115
    invoke-static {p2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :goto_2
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Lw3/h;->d:Landroid/widget/FrameLayout;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 146
    .line 147
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const/16 p2, 0x3c

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    .line 158
    .line 159
    :cond_3
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\u00d7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sget-object v2, Lw3/g;->c:Lw3/g;

    sget-object v3, Lw3/g;->b:Lw3/g;

    iget-object v4, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->q:Ljava/util/EnumMap;

    if-eqz v1, :cond_5

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw3/h;

    iget-object v4, v4, Lw3/h;->e:Lw3/g;

    if-ne v4, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/a;

    invoke-virtual {p0, v1, v2}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g(Ly3/a;Lw3/g;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->r:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/a;

    invoke-virtual {p0, v0, v3}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g(Ly3/a;Lw3/g;)V

    :cond_4
    new-instance v0, Lw2/h;

    const/16 v1, 0x1b

    invoke-direct {v0, p0, p1, v1}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->j(Ljava/lang/Runnable;)V

    sget-object v0, Ln2/e;->b:Ln2/e;

    invoke-virtual {p0, v0, p1}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->d(Ln2/e;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "OK:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v1, Ln2/e;->c:Ln2/e;

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->d(Ln2/e;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    const-string v0, "E: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "Errno"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "fatal:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string v0, "Cloning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Receiving"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "Fetching"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v3, Ln2/e;->a:Ln2/e;

    if-nez v0, :cond_c

    const-string v0, "Installing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "Bundle complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Ly3/a;->h:Ly3/a;

    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g(Ly3/a;Lw3/g;)V

    goto :goto_1

    :cond_a
    const-string v0, "metasploit v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ly3/a;->i:Ly3/a;

    invoke-virtual {p0, v0, v2}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g(Ly3/a;Lw3/g;)V

    sget-object v0, Ly3/a;->j:Ly3/a;

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    :cond_c
    :goto_3
    invoke-virtual {p0, v3, p1}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->d(Ln2/e;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    :goto_4
    sget-object v0, Ly3/a;->d:Ly3/a;

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/h;

    iget-object v1, v1, Lw3/h;->e:Lw3/g;

    sget-object v2, Lw3/g;->a:Lw3/g;

    if-ne v1, v2, :cond_e

    invoke-virtual {p0, v0, v3}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g(Ly3/a;Lw3/g;)V

    :cond_e
    sget-object v0, Ln2/e;->f:Ln2/e;

    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->d(Ln2/e;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    :goto_6
    sget-object v0, Ln2/e;->e:Ln2/e;

    goto :goto_5

    :cond_10
    :goto_7
    return-void
.end method

.method public final g(Ly3/a;Lw3/g;)V
    .locals 2

    .line 1
    new-instance v0, Lv3/g;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "done"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->c:Ll4/l;

    .line 13
    .line 14
    const-string v0, "msf"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {p1, v0, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    .line 31
    .line 32
    const v0, 0x7f0800c9

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 41
    .line 42
    sget-object v3, Lx/g;->a:Ljava/lang/Object;

    .line 43
    .line 44
    const v3, 0x7f060073

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i:Landroid/widget/TextView;

    .line 62
    .line 63
    const v0, 0x7f1303e8

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 70
    .line 71
    const v0, 0x7f1303e5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 78
    .line 79
    const v0, 0x7f0801b4

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 91
    .line 92
    new-instance v0, Lw3/e;

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    invoke-direct {v0, p0, v1}, Lw3/e;-><init>(Lcom/zalexdev/stryker/metasploit/InstallMetasploit;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const-string v0, "failed"

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g:Landroid/widget/ProgressBar;

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    .line 121
    .line 122
    const v0, 0x7f0800d0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 131
    .line 132
    sget-object v3, Lx/g;->a:Ljava/lang/Object;

    .line 133
    .line 134
    const v3, 0x7f060302

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 142
    .line 143
    invoke-virtual {p1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i:Landroid/widget/TextView;

    .line 152
    .line 153
    const v0, 0x7f1303e9

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 160
    .line 161
    const v0, 0x7f1303e6

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 168
    .line 169
    const v0, 0x7f080199

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 176
    .line 177
    new-instance v0, Lw3/e;

    .line 178
    .line 179
    invoke-direct {v0, p0, v1}, Lw3/e;-><init>(Lcom/zalexdev/stryker/metasploit/InstallMetasploit;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_1
    const-string v0, "running"

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_2

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->k()V

    .line 200
    .line 201
    .line 202
    :cond_2
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->d:Landroidx/fragment/app/u0;

    .line 9
    .line 10
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/zalexdev/stryker/metasploit/Metasploit;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const v3, 0x7f0a0205

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->h(Z)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->a:Landroidx/fragment/app/a0;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->k:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i:Landroid/widget/TextView;

    const v1, 0x7f1303eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->k()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw3/f;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lw3/f;-><init>(Lcom/zalexdev/stryker/metasploit/InstallMetasploit;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->j(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->p:Ln2/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Ln2/c;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "metasploit"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/zalexdev/stryker/install/InstallService;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0062

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-boolean v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->s:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->t:Lf/d0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->s:Z

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->a:Landroidx/fragment/app/a0;

    .line 12
    .line 13
    new-instance p2, Ll4/l;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->c:Ll4/l;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->d:Landroidx/fragment/app/u0;

    .line 27
    .line 28
    const p2, 0x7f0a02e8

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    const p2, 0x7f0a03f7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 49
    .line 50
    const p2, 0x7f0a03f8

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/widget/ProgressBar;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->g:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    const p2, 0x7f0a03f6

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h:Landroid/widget/ImageView;

    .line 71
    .line 72
    const p2, 0x7f0a03fa

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/widget/TextView;

    .line 80
    .line 81
    const p2, 0x7f0a03f9

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i:Landroid/widget/TextView;

    .line 91
    .line 92
    const p2, 0x7f0a03e8

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Landroid/widget/TextView;

    .line 100
    .line 101
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->j:Landroid/widget/TextView;

    .line 102
    .line 103
    const p2, 0x7f0a03e6

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 111
    .line 112
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->k:Lcom/google/android/material/card/MaterialCardView;

    .line 113
    .line 114
    const p2, 0x7f0a03e7

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroid/widget/LinearLayout;

    .line 122
    .line 123
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->l:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    const p2, 0x7f0a03e4

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->m:Landroid/widget/TextView;

    .line 135
    .line 136
    const p2, 0x7f0a03e5

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    .line 145
    iput-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 148
    .line 149
    invoke-direct {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Ln2/c;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 158
    .line 159
    invoke-direct {p1, p2}, Ln2/c;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->p:Ln2/c;

    .line 163
    .line 164
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->l:Landroid/widget/LinearLayout;

    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->q:Ljava/util/EnumMap;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/util/EnumMap;->clear()V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Ly3/a;->values()[Ly3/a;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    array-length v1, v0

    .line 190
    const/4 v2, 0x0

    .line 191
    move v3, v2

    .line 192
    :goto_0
    if-ge v3, v1, :cond_0

    .line 193
    .line 194
    aget-object v4, v0, v3

    .line 195
    .line 196
    const v5, 0x7f0d0074

    .line 197
    .line 198
    .line 199
    iget-object v6, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->l:Landroid/widget/LinearLayout;

    .line 200
    .line 201
    invoke-virtual {p1, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    const v6, 0x7f0a05db

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Landroid/widget/TextView;

    .line 213
    .line 214
    const v7, 0x7f0a05d8

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Landroid/widget/ImageView;

    .line 222
    .line 223
    const v8, 0x7f0a05da

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    check-cast v8, Landroid/widget/ProgressBar;

    .line 231
    .line 232
    const v9, 0x7f0a05d9

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    check-cast v9, Landroid/widget/FrameLayout;

    .line 240
    .line 241
    iget v10, v4, Ly3/a;->a:I

    .line 242
    .line 243
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 244
    .line 245
    .line 246
    new-instance v10, Lw3/h;

    .line 247
    .line 248
    invoke-direct {v10, v6, v7, v8, v9}, Lw3/h;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 249
    .line 250
    .line 251
    sget-object v6, Lw3/g;->a:Lw3/g;

    .line 252
    .line 253
    invoke-virtual {p0, v10, v6}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e(Lw3/h;Lw3/g;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, v4, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    iget-object v4, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->l:Landroid/widget/LinearLayout;

    .line 260
    .line 261
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    add-int/lit8 v3, v3, 0x1

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->r:Ljava/util/LinkedHashMap;

    .line 268
    .line 269
    sget-object p2, Ly3/a;->b:Ly3/a;

    .line 270
    .line 271
    const-string v0, "Updating packages"

    .line 272
    .line 273
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    sget-object p2, Ly3/a;->c:Ly3/a;

    .line 277
    .line 278
    const-string v0, "Installing additional pkgs"

    .line 279
    .line 280
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    sget-object p2, Ly3/a;->d:Ly3/a;

    .line 284
    .line 285
    const-string v0, "Downloading metasploit"

    .line 286
    .line 287
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    sget-object p2, Ly3/a;->e:Ly3/a;

    .line 291
    .line 292
    const-string v0, "Pulling msfpc helper"

    .line 293
    .line 294
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    sget-object p2, Ly3/a;->f:Ly3/a;

    .line 298
    .line 299
    const-string v0, "Linking binaries"

    .line 300
    .line 301
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    sget-object p2, Ly3/a;->g:Ly3/a;

    .line 305
    .line 306
    const-string v0, "Installing msf pkgs and tools"

    .line 307
    .line 308
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    sget-object p2, Ly3/a;->i:Ly3/a;

    .line 312
    .line 313
    const-string v0, "Initializing metasploit"

    .line 314
    .line 315
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    sget-object p2, Ly3/a;->j:Ly3/a;

    .line 319
    .line 320
    const-string v0, "Making sure everything is ready"

    .line 321
    .line 322
    invoke-virtual {p1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e:Lcom/google/android/material/button/MaterialButton;

    .line 326
    .line 327
    new-instance p2, Lw3/e;

    .line 328
    .line 329
    const/4 v0, 0x1

    .line 330
    invoke-direct {p2, p0, v0}, Lw3/e;-><init>(Lcom/zalexdev/stryker/metasploit/InstallMetasploit;I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->c:Ll4/l;

    .line 337
    .line 338
    const-string p2, "msf"

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_1

    .line 345
    .line 346
    invoke-virtual {p0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i()V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    .line 351
    .line 352
    const-string p2, "com.zalexdev.stryker.install.UPDATED"

    .line 353
    .line 354
    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    iget-object v1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->t:Lf/d0;

    .line 362
    .line 363
    invoke-static {p2, v1, p1}, Lx/g;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 364
    .line 365
    .line 366
    iput-boolean v0, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->s:Z

    .line 367
    .line 368
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 369
    .line 370
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->c:Ll4/l;

    .line 371
    .line 372
    const-string v1, "metasploit"

    .line 373
    .line 374
    invoke-static {p1, p2, v1}, Lcom/zalexdev/stryker/install/InstallService;->h(Landroid/content/Context;Ll4/l;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    const-string p2, "running"

    .line 379
    .line 380
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result p2

    .line 384
    if-nez p2, :cond_3

    .line 385
    .line 386
    const-string p2, "failed"

    .line 387
    .line 388
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result p2

    .line 392
    if-eqz p2, :cond_2

    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    .line 396
    .line 397
    new-instance p2, Lw3/f;

    .line 398
    .line 399
    invoke-direct {p2, p0, v2}, Lw3/f;-><init>(Lcom/zalexdev/stryker/metasploit/InstallMetasploit;I)V

    .line 400
    .line 401
    .line 402
    const-string v0, "msf-install-check"

    .line 403
    .line 404
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 408
    .line 409
    .line 410
    goto :goto_3

    .line 411
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->p:Ln2/c;

    .line 412
    .line 413
    invoke-virtual {p2}, Ln2/c;->clear()V

    .line 414
    .line 415
    .line 416
    new-instance p2, Lw3/f;

    .line 417
    .line 418
    invoke-direct {p2, p0, v0}, Lw3/f;-><init>(Lcom/zalexdev/stryker/metasploit/InstallMetasploit;I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, p2}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->j(Ljava/lang/Runnable;)V

    .line 422
    .line 423
    .line 424
    iget-object p2, p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->b:Landroid/content/Context;

    .line 425
    .line 426
    invoke-static {p2, v1}, Lcom/zalexdev/stryker/install/InstallService;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_4

    .line 439
    .line 440
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    check-cast v0, Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->f(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    goto :goto_2

    .line 450
    :cond_4
    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->h(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    :goto_3
    return-void
.end method

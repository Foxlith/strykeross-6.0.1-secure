.class public Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final E:[Ljava/lang/String;

.field public static final F:[Ljava/lang/String;


# instance fields
.field public A:Landroidx/recyclerview/widget/RecyclerView;

.field public B:Ln2/c;

.field public final C:Ljava/util/EnumMap;

.field public final D:Lp2/j;

.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Landroidx/fragment/app/a0;

.field public c:Landroid/content/Context;

.field public d:Ll4/l;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Lcom/google/android/material/textfield/TextInputLayout;

.field public h:Lcom/google/android/material/textfield/TextInputEditText;

.field public i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public k:Landroid/view/View;

.field public l:Lcom/google/android/material/chip/ChipGroup;

.field public m:Lcom/google/android/material/textview/MaterialTextView;

.field public n:Lcom/google/android/material/card/MaterialCardView;

.field public p:Lcom/google/android/material/textview/MaterialTextView;

.field public final q:Ljava/util/ArrayList;

.field public r:Lp2/t;

.field public s:Lcom/google/android/material/textview/MaterialTextView;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/ProgressBar;

.field public v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public w:Lcom/google/android/material/button/MaterialButton;

.field public x:Landroid/view/View;

.field public y:Landroid/widget/LinearLayout;

.field public z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "eternalblue"

    const-string v1, "log4j"

    const-string v2, "printnightmare"

    const-string v3, "apache"

    const-string v4, "wordpress"

    const-string v5, "sql injection"

    const-string v6, "kernel"

    const-string v7, "sudo"

    const-string v8, "openssh"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    const-string v0, "Verifying installation"

    const-string v1, "Ready"

    const-string v2, "Checking dependencies"

    const-string v3, "Installing git"

    const-string v4, "Cloning exploit-db (~200 MB)"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->F:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lp2/k;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->C:Ljava/util/EnumMap;

    new-instance v0, Lp2/j;

    invoke-direct {v0, p0}, Lp2/j;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->D:Lp2/j;

    return-void
.end method

.method public static d(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;Lcom/zalexdev/stryker/custom/Sploit;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0x2f

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/zalexdev/stryker/custom/Exploit;

    .line 42
    .line 43
    invoke-direct {v2}, Lcom/zalexdev/stryker/custom/Exploit;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/custom/Exploit;->setPath(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Sploit;->getTitle()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Sploit;->getTitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v2, p1}, Lcom/zalexdev/stryker/custom/Exploit;->setTitle(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance p1, Lp2/i;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {p1, p0, v0, v1}, Lp2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2, p1}, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->e(Lcom/zalexdev/stryker/custom/Exploit;Lp2/c;)Lcom/zalexdev/stryker/arsenal/AddExploitSheet;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string v0, "arsenal_add_after_db"

    .line 77
    .line 78
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/u0;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 83
    .line 84
    const v0, 0x7f130071

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p1, p0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void
.end method

.method public static f(Ll4/l;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "/sdcard/Stryker/exploits/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mkdir -p "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/sdcard/Stryker/exploits"

    invoke-static {v2}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; cp -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->M([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "/opt/exploitdb"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/opt/exploitdb/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final e(Lp2/l;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr p2, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    if-eq p2, v1, :cond_2

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq p2, v4, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    if-eq p2, v4, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 18
    .line 19
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 20
    .line 21
    const v1, 0x7f060074

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget-object v1, p1, Lp2/l;->c:Landroid/widget/ProgressBar;

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lp2/l;->b:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v1, p1, Lp2/l;->a:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 45
    .line 46
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 47
    .line 48
    const v4, 0x7f060302

    .line 49
    .line 50
    .line 51
    invoke-static {p2, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget-object v4, p1, Lp2/l;->c:Landroid/widget/ProgressBar;

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p1, Lp2/l;->b:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    const v2, 0x7f0800d0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    invoke-virtual {v3, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object v2, p1, Lp2/l;->a:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 83
    .line 84
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 85
    .line 86
    const v1, 0x7f060073

    .line 87
    .line 88
    .line 89
    invoke-static {p2, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    iget-object v1, p1, Lp2/l;->c:Landroid/widget/ProgressBar;

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p1, Lp2/l;->b:Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    const v3, 0x7f0800c9

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    .line 108
    .line 109
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 110
    .line 111
    invoke-virtual {v1, p2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 116
    .line 117
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 118
    .line 119
    const v4, 0x7f060316

    .line 120
    .line 121
    .line 122
    invoke-static {p2, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    iget-object v4, p1, Lp2/l;->c:Landroid/widget/ProgressBar;

    .line 127
    .line 128
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p1, Lp2/l;->b:Landroid/widget/ImageView;

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :goto_2
    iget-object v0, p1, Lp2/l;->a:Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p1, Lp2/l;->d:Landroid/widget/FrameLayout;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 159
    .line 160
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const/16 p2, 0x3c

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 170
    .line 171
    .line 172
    :cond_3
    return-void

    .line 173
    :cond_4
    throw v0
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->A:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->b:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->b:Landroidx/fragment/app/a0;

    new-instance v1, Lf/n0;

    const/16 v2, 0x14

    invoke-direct {v1, p0, p1, v2}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->g:Lcom/google/android/material/textfield/TextInputLayout;

    .line 33
    .line 34
    const v1, 0x7f130077

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->g:Lcom/google/android/material/textfield/TextInputLayout;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 52
    .line 53
    const-string v2, "arsenal_db_last_query"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->b:Landroidx/fragment/app/a0;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v3, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const-string v3, "input_method"

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-object v3, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->k:Landroid/view/View;

    .line 93
    .line 94
    const/16 v3, 0x8

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->n:Lcom/google/android/material/card/MaterialCardView;

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->q:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->r:Lp2/t;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/lang/Thread;

    .line 115
    .line 116
    new-instance v3, Lp2/g;

    .line 117
    .line 118
    invoke-direct {v3, p0, v0, v2}, Lp2/g;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0106

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lp2/r;->d()Lp2/r;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v0, Lp2/r;->k:Lp2/j;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->D:Lp2/j;

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lp2/r;->k:Lp2/j;

    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->b:Landroidx/fragment/app/a0;

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 16
    .line 17
    new-instance v3, Ll4/l;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v3, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 23
    .line 24
    const v2, 0x7f0a0172

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->e:Landroid/view/View;

    .line 32
    .line 33
    const v2, 0x7f0a017c

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->f:Landroid/view/View;

    .line 41
    .line 42
    const v2, 0x7f0a017b

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 50
    .line 51
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->g:Lcom/google/android/material/textfield/TextInputLayout;

    .line 52
    .line 53
    const v2, 0x7f0a017a

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 61
    .line 62
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 63
    .line 64
    const v2, 0x7f0a0179

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 72
    .line 73
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 74
    .line 75
    const v2, 0x7f0a0178

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    const v2, 0x7f0a016a

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->k:Landroid/view/View;

    .line 94
    .line 95
    const v2, 0x7f0a017f

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/google/android/material/chip/ChipGroup;

    .line 103
    .line 104
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->l:Lcom/google/android/material/chip/ChipGroup;

    .line 105
    .line 106
    const v2, 0x7f0a017e

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 114
    .line 115
    const v2, 0x7f0a017d

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 123
    .line 124
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 125
    .line 126
    const v2, 0x7f0a0168

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 134
    .line 135
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->n:Lcom/google/android/material/card/MaterialCardView;

    .line 136
    .line 137
    const v2, 0x7f0a0169

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 145
    .line 146
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->p:Lcom/google/android/material/textview/MaterialTextView;

    .line 147
    .line 148
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 151
    .line 152
    invoke-direct {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    const/16 v3, 0x40

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Lp2/t;

    .line 166
    .line 167
    iget-object v3, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 168
    .line 169
    iget-object v4, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->q:Ljava/util/ArrayList;

    .line 170
    .line 171
    new-instance v5, Lp2/j;

    .line 172
    .line 173
    invoke-direct {v5, v0}, Lp2/j;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {v2, v3, v4, v5}, Lp2/t;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lp2/j;)V

    .line 177
    .line 178
    .line 179
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->r:Lp2/t;

    .line 180
    .line 181
    iget-object v3, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 182
    .line 183
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 184
    .line 185
    .line 186
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->l:Lcom/google/android/material/chip/ChipGroup;

    .line 187
    .line 188
    const/4 v3, 0x1

    .line 189
    const/4 v4, 0x0

    .line 190
    if-nez v2, :cond_0

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 194
    .line 195
    .line 196
    sget-object v2, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 197
    .line 198
    move v5, v4

    .line 199
    :goto_0
    const/16 v6, 0x9

    .line 200
    .line 201
    if-ge v5, v6, :cond_1

    .line 202
    .line 203
    aget-object v6, v2, v5

    .line 204
    .line 205
    new-instance v7, Lcom/google/android/material/chip/Chip;

    .line 206
    .line 207
    iget-object v8, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 208
    .line 209
    invoke-direct {v7, v8}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v4}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, v3}, Landroid/view/View;->setClickable(Z)V

    .line 219
    .line 220
    .line 221
    const v8, 0x7f06007b

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v8}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColorResource(I)V

    .line 225
    .line 226
    .line 227
    const/4 v8, 0x0

    .line 228
    invoke-virtual {v7, v8}, Lcom/google/android/material/chip/Chip;->setChipStrokeWidth(F)V

    .line 229
    .line 230
    .line 231
    new-instance v8, Lcom/google/android/material/snackbar/a;

    .line 232
    .line 233
    const/16 v9, 0xc

    .line 234
    .line 235
    invoke-direct {v8, v0, v6, v9}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    iget-object v6, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->l:Lcom/google/android/material/chip/ChipGroup;

    .line 242
    .line 243
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v5, v5, 0x1

    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 250
    .line 251
    if-nez v2, :cond_2

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    .line 255
    .line 256
    new-instance v5, Lp2/f;

    .line 257
    .line 258
    const/4 v6, 0x3

    .line 259
    invoke-direct {v5, v0, v6}, Lp2/f;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V

    .line 260
    .line 261
    .line 262
    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 266
    .line 267
    .line 268
    :goto_2
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->g:Lcom/google/android/material/textfield/TextInputLayout;

    .line 269
    .line 270
    new-instance v5, Lp2/d;

    .line 271
    .line 272
    invoke-direct {v5, v0, v4}, Lp2/d;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 279
    .line 280
    new-instance v5, Lp2/e;

    .line 281
    .line 282
    invoke-direct {v5, v0}, Lp2/e;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 286
    .line 287
    .line 288
    const v2, 0x7f0a0177

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 296
    .line 297
    const v2, 0x7f0a0176

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 305
    .line 306
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->s:Lcom/google/android/material/textview/MaterialTextView;

    .line 307
    .line 308
    const v2, 0x7f0a016e

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    check-cast v2, Landroid/widget/ImageView;

    .line 316
    .line 317
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 318
    .line 319
    const v2, 0x7f0a0173

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    check-cast v2, Landroid/widget/ProgressBar;

    .line 327
    .line 328
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->u:Landroid/widget/ProgressBar;

    .line 329
    .line 330
    const v2, 0x7f0a0171

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 338
    .line 339
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 340
    .line 341
    const v2, 0x7f0a016d

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 349
    .line 350
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    .line 351
    .line 352
    const v2, 0x7f0a0175

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->x:Landroid/view/View;

    .line 360
    .line 361
    const v2, 0x7f0a0174

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    check-cast v2, Landroid/widget/LinearLayout;

    .line 369
    .line 370
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->y:Landroid/widget/LinearLayout;

    .line 371
    .line 372
    const v2, 0x7f0a0170

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    iput-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->z:Landroid/view/View;

    .line 380
    .line 381
    const v2, 0x7f0a016f

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 389
    .line 390
    iput-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 391
    .line 392
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 393
    .line 394
    invoke-direct {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 398
    .line 399
    .line 400
    new-instance v1, Ln2/c;

    .line 401
    .line 402
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 403
    .line 404
    invoke-direct {v1, v2}, Ln2/c;-><init>(Landroid/content/Context;)V

    .line 405
    .line 406
    .line 407
    iput-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->B:Ln2/c;

    .line 408
    .line 409
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 410
    .line 411
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 412
    .line 413
    .line 414
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->y:Landroid/widget/LinearLayout;

    .line 415
    .line 416
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 417
    .line 418
    .line 419
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->C:Ljava/util/EnumMap;

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    .line 422
    .line 423
    .line 424
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 425
    .line 426
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-static {}, Lp2/k;->values()[Lp2/k;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    array-length v6, v5

    .line 435
    move v7, v4

    .line 436
    move v8, v7

    .line 437
    :goto_3
    if-ge v7, v6, :cond_3

    .line 438
    .line 439
    aget-object v9, v5, v7

    .line 440
    .line 441
    const v10, 0x7f0d0074

    .line 442
    .line 443
    .line 444
    iget-object v11, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->y:Landroid/widget/LinearLayout;

    .line 445
    .line 446
    invoke-virtual {v2, v10, v11, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v10

    .line 450
    const v11, 0x7f0a05db

    .line 451
    .line 452
    .line 453
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    check-cast v11, Landroid/widget/TextView;

    .line 458
    .line 459
    const v12, 0x7f0a05d8

    .line 460
    .line 461
    .line 462
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    check-cast v12, Landroid/widget/ImageView;

    .line 467
    .line 468
    const v13, 0x7f0a05da

    .line 469
    .line 470
    .line 471
    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 472
    .line 473
    .line 474
    move-result-object v13

    .line 475
    check-cast v13, Landroid/widget/ProgressBar;

    .line 476
    .line 477
    const v14, 0x7f0a05d9

    .line 478
    .line 479
    .line 480
    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v14

    .line 484
    check-cast v14, Landroid/widget/FrameLayout;

    .line 485
    .line 486
    sget-object v15, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->F:[Ljava/lang/String;

    .line 487
    .line 488
    add-int/lit8 v16, v8, 0x1

    .line 489
    .line 490
    aget-object v8, v15, v8

    .line 491
    .line 492
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    .line 494
    .line 495
    new-instance v8, Lp2/l;

    .line 496
    .line 497
    invoke-direct {v8, v11, v12, v13, v14}, Lp2/l;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v8, v3}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->e(Lp2/l;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v9, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    iget-object v8, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->y:Landroid/widget/LinearLayout;

    .line 507
    .line 508
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    .line 510
    .line 511
    add-int/lit8 v7, v7, 0x1

    .line 512
    .line 513
    move/from16 v8, v16

    .line 514
    .line 515
    goto :goto_3

    .line 516
    :cond_3
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    .line 517
    .line 518
    new-instance v2, Lp2/d;

    .line 519
    .line 520
    invoke-direct {v2, v0, v3}, Lp2/d;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    .line 525
    .line 526
    new-instance v1, Ljava/lang/Thread;

    .line 527
    .line 528
    new-instance v2, Lp2/f;

    .line 529
    .line 530
    const/4 v5, 0x2

    .line 531
    invoke-direct {v2, v0, v5}, Lp2/f;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V

    .line 532
    .line 533
    .line 534
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 538
    .line 539
    .line 540
    invoke-static {}, Lp2/r;->d()Lp2/r;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->D:Lp2/j;

    .line 545
    .line 546
    iput-object v2, v1, Lp2/r;->k:Lp2/j;

    .line 547
    .line 548
    if-nez v2, :cond_4

    .line 549
    .line 550
    goto :goto_6

    .line 551
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 552
    .line 553
    iget-object v6, v1, Lp2/r;->c:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v6

    .line 566
    if-eqz v6, :cond_5

    .line 567
    .line 568
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v6

    .line 572
    check-cast v6, Ln2/f;

    .line 573
    .line 574
    invoke-virtual {v2, v6}, Lp2/j;->b(Ln2/f;)V

    .line 575
    .line 576
    .line 577
    goto :goto_4

    .line 578
    :cond_5
    :goto_5
    iget-object v5, v1, Lp2/r;->d:[I

    .line 579
    .line 580
    array-length v6, v5

    .line 581
    if-ge v4, v6, :cond_6

    .line 582
    .line 583
    aget v5, v5, v4

    .line 584
    .line 585
    invoke-virtual {v2, v4, v5}, Lp2/j;->d(II)V

    .line 586
    .line 587
    .line 588
    add-int/lit8 v4, v4, 0x1

    .line 589
    .line 590
    goto :goto_5

    .line 591
    :cond_6
    iget-boolean v4, v1, Lp2/r;->e:Z

    .line 592
    .line 593
    iget v5, v1, Lp2/r;->f:I

    .line 594
    .line 595
    invoke-virtual {v2, v5, v4}, Lp2/j;->c(IZ)V

    .line 596
    .line 597
    .line 598
    iget-object v4, v1, Lp2/r;->g:Ljava/lang/CharSequence;

    .line 599
    .line 600
    invoke-virtual {v2, v4}, Lp2/j;->e(Ljava/lang/CharSequence;)V

    .line 601
    .line 602
    .line 603
    iget-boolean v4, v1, Lp2/r;->i:Z

    .line 604
    .line 605
    if-eqz v4, :cond_7

    .line 606
    .line 607
    iget-boolean v1, v1, Lp2/r;->j:Z

    .line 608
    .line 609
    invoke-virtual {v2, v1}, Lp2/j;->a(Z)V

    .line 610
    .line 611
    .line 612
    :cond_7
    :goto_6
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 613
    .line 614
    if-nez v1, :cond_8

    .line 615
    .line 616
    goto :goto_7

    .line 617
    :cond_8
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 618
    .line 619
    const-string v2, "arsenal_db_last_query"

    .line 620
    .line 621
    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    if-nez v1, :cond_9

    .line 626
    .line 627
    const-string v1, ""

    .line 628
    .line 629
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    if-eqz v2, :cond_a

    .line 638
    .line 639
    goto :goto_7

    .line 640
    :cond_a
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 641
    .line 642
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    .line 644
    .line 645
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h:Lcom/google/android/material/textfield/TextInputEditText;

    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 652
    .line 653
    .line 654
    new-instance v1, Ljava/lang/Thread;

    .line 655
    .line 656
    new-instance v2, Lp2/f;

    .line 657
    .line 658
    invoke-direct {v2, v0, v3}, Lp2/f;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V

    .line 659
    .line 660
    .line 661
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 665
    .line 666
    .line 667
    :goto_7
    return-void
.end method

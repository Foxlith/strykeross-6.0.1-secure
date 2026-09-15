.class public Lcom/zalexdev/stryker/hid/ui/HidFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Ll3/i;


# static fields
.field public static final synthetic l:I


# instance fields
.field public a:Lv1/e;

.field public b:Ln2/c;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Lcom/google/android/material/textview/MaterialTextView;

.field public f:Lcom/google/android/material/textview/MaterialTextView;

.field public g:Lcom/google/android/material/textview/MaterialTextView;

.field public h:Lcom/google/android/material/button/MaterialButton;

.field public i:Lcom/google/android/material/textview/MaterialTextView;

.field public j:Lcom/google/android/material/textfield/TextInputEditText;

.field public k:Landroidx/activity/result/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->b:Ln2/c;

    invoke-virtual {p1, v1}, Ln2/c;->c(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/a;

    iget-object v3, v2, Lj3/a;->b:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lj3/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->b:Ln2/c;

    invoke-virtual {p1, v0}, Ln2/c;->c(Ljava/util/ArrayList;)V

    :goto_1
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->i:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->b:Ln2/c;

    invoke-virtual {v0}, Ln2/c;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public final e(Lj3/a;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->a:Lv1/e;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Lv1/e;->f()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lj3/a;

    .line 26
    .line 27
    iget-object v3, v3, Lj3/a;->a:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, p1, Lj3/a;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v2, -0x1

    .line 42
    :goto_1
    if-gez v2, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    add-int/2addr p2, v2

    .line 46
    if-ltz p2, :cond_6

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-lt p2, p1, :cond_4

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lj3/a;

    .line 79
    .line 80
    iget-object v3, v3, Lj3/a;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iget-object p2, v0, Lv1/e;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p2, Ll4/l;

    .line 107
    .line 108
    const-string v0, "hid_payload_order"

    .line 109
    .line 110
    invoke-static {p1}, Lv1/e;->e(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, v0, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->g()V

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_3
    return-void
.end method

.method public final f(Lj3/a;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p1, Lj3/a;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ".ducky"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "stryker.hid.ide.name"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v1, "stryker.hid.ide.body"

    .line 39
    .line 40
    iget-object p1, p1, Lj3/a;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->k:Landroidx/activity/result/c;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->a:Lv1/e;

    invoke-virtual {v1}, Lv1/e;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->j:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->j:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ld/f;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lv/f;

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->k:Landroidx/activity/result/c;

    .line 21
    .line 22
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->g()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lv1/e;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p2, v0}, Lv1/e;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->a:Lv1/e;

    .line 14
    .line 15
    const p2, 0x7f0a024d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 25
    .line 26
    const p2, 0x7f0a024c

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 36
    .line 37
    const p2, 0x7f0a024b

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 47
    .line 48
    const p2, 0x7f0a0245

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->h:Lcom/google/android/material/button/MaterialButton;

    .line 58
    .line 59
    const p2, 0x7f0a0246

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 69
    .line 70
    const p2, 0x7f0a0248

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->j:Lcom/google/android/material/textfield/TextInputEditText;

    .line 80
    .line 81
    const p2, 0x7f0a0249

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Ln2/c;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Ln2/c;-><init>(Ll3/i;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->b:Ln2/c;

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->h:Lcom/google/android/material/button/MaterialButton;

    .line 112
    .line 113
    new-instance v0, Ll3/a;

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-direct {v0, p0, v1}, Ll3/a;-><init>(Lcom/zalexdev/stryker/hid/ui/HidFragment;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    const p2, 0x7f0a0247

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 130
    .line 131
    new-instance p2, Ll3/a;

    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    invoke-direct {p2, p0, v0}, Ll3/a;-><init>(Lcom/zalexdev/stryker/hid/ui/HidFragment;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Ll4/l;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-direct {p1, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    const-string p2, "hid_files_filter"

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_0

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_0

    .line 162
    .line 163
    iget-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->j:Lcom/google/android/material/textfield/TextInputEditText;

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget-object p2, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->j:Lcom/google/android/material/textfield/TextInputEditText;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 175
    .line 176
    .line 177
    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->j:Lcom/google/android/material/textfield/TextInputEditText;

    .line 178
    .line 179
    new-instance p2, Ls2/k;

    .line 180
    .line 181
    invoke-direct {p2, p0, v0}, Ls2/k;-><init>(Ljava/lang/Object;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 188
    .line 189
    const-string p2, "PROBING"

    .line 190
    .line 191
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 195
    .line 196
    const p2, 0x7f0800ae

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 203
    .line 204
    const p2, -0x109400

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 211
    .line 212
    const p2, 0x7f130257

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    .line 222
    .line 223
    new-instance p1, Ljava/lang/Thread;

    .line 224
    .line 225
    new-instance p2, Landroidx/activity/b;

    .line 226
    .line 227
    const/16 v0, 0x15

    .line 228
    .line 229
    invoke-direct {p2, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 230
    .line 231
    .line 232
    const-string v0, "hid-files-cap"

    .line 233
    .line 234
    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->g()V

    .line 241
    .line 242
    .line 243
    return-void
.end method

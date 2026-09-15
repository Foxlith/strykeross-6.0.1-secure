.class public final Lcom/stryker/terminal/ui/pm/PackageManagerActivity;
.super Lf/q;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/r3;
.implements Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;


# instance fields
.field public adapter:Lcom/stryker/terminal/ui/pm/PackageAdapter;

.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;"
        }
    .end annotation
.end field

.field private models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;"
        }
    .end annotation
.end field

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lf/q;-><init>()V

    new-instance v0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;

    invoke-direct {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;-><init>()V

    new-instance v1, Le0/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Le0/b;-><init>(I)V

    const-class v2, Lcom/stryker/terminal/ui/pm/PackageModel;

    invoke-virtual {v0, v2, v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->setOrderForModel(Ljava/lang/Class;Ljava/util/Comparator;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ComparatorBuilder;->build()Ljava/util/Comparator;

    move-result-object v0

    const-string v1, "ComparatorBuilder<Packag\u2026ame!!)\n    }\n    .build()"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->comparator:Ljava/util/Comparator;

    sget-object v0, Lx4/o;->a:Lx4/o;

    iput-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->models:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$installPackage(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Ljava/lang/String;)Lw4/h;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->installPackage(Ljava/lang/String;)Lw4/h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshPackageList(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->refreshPackageList()V

    return-void
.end method

.method private final changeSource()V
    .locals 9

    .line 1
    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    .line 2
    .line 3
    const-class v1, Lcom/stryker/terminal/component/pm/PackageComponent;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/stryker/terminal/component/pm/PackageComponent;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/PackageComponent;->getSourceManager()Lcom/stryker/terminal/component/pm/SourceManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/SourceManager;->getAllSources()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-static {v1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Lcom/stryker/terminal/component/pm/Source;

    .line 46
    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v8, v6, Lcom/stryker/terminal/component/pm/Source;->url:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v8, " :: "

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v6, v6, Lcom/stryker/terminal/component/pm/Source;->repo:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v7, v6, v3}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-array v5, v2, [Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, [Ljava/lang/String;

    .line 75
    .line 76
    new-instance v5, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-static {v1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Lcom/stryker/terminal/component/pm/Source;

    .line 100
    .line 101
    iget-boolean v7, v7, Lcom/stryker/terminal/component/pm/Source;->enabled:Z

    .line 102
    .line 103
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    new-array v6, v6, [Z

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_2

    .line 126
    .line 127
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    check-cast v7, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    add-int/lit8 v8, v2, 0x1

    .line 138
    .line 139
    aput-boolean v7, v6, v2

    .line 140
    .line 141
    move v2, v8

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    new-instance v2, Lf/m;

    .line 144
    .line 145
    invoke-direct {v2, p0}, Lf/m;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    sget v5, Lcom/stryker/terminal/R$string;->pref_package_source:I

    .line 149
    .line 150
    invoke-virtual {v2, v5}, Lf/m;->setTitle(I)Lf/m;

    .line 151
    .line 152
    .line 153
    check-cast v3, [Ljava/lang/CharSequence;

    .line 154
    .line 155
    new-instance v5, Lcom/stryker/terminal/ui/pm/c;

    .line 156
    .line 157
    invoke-direct {v5, v1}, Lcom/stryker/terminal/ui/pm/c;-><init>(Ljava/util/List;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v3, v6, v5}, Lf/m;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lf/m;

    .line 161
    .line 162
    .line 163
    new-instance v3, Lcom/stryker/terminal/ui/customize/b;

    .line 164
    .line 165
    const/4 v5, 0x1

    .line 166
    invoke-direct {v3, p0, v0, v1, v5}, Lcom/stryker/terminal/ui/customize/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    const v1, 0x1040013

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v1, v3}, Lf/m;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 173
    .line 174
    .line 175
    sget v1, Lcom/stryker/terminal/R$string;->new_source:I

    .line 176
    .line 177
    new-instance v3, Lcom/stryker/terminal/ui/customize/a;

    .line 178
    .line 179
    const/4 v5, 0x3

    .line 180
    invoke-direct {v3, p0, v0, v5}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v1, v3}, Lf/m;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 184
    .line 185
    .line 186
    const v0, 0x1040009

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v0, v4}, Lf/m;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Lf/m;->show()Lf/n;

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method private static final changeSource$lambda$5(Ljava/util/List;Landroid/content/DialogInterface;IZ)V
    .locals 0

    const-string p1, "$sourceList"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stryker/terminal/component/pm/Source;

    iput-boolean p3, p0, Lcom/stryker/terminal/component/pm/Source;->enabled:Z

    return-void
.end method

.method private static final changeSource$lambda$6(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$sourceList"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "sourceManager"

    invoke-static {p1, p3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->changeSourceInternal(Lcom/stryker/terminal/component/pm/SourceManager;Ljava/util/List;)V

    return-void
.end method

.method private static final changeSource$lambda$7(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sourceManager"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->changeSourceToUserInput(Lcom/stryker/terminal/component/pm/SourceManager;)V

    return-void
.end method

.method private final changeSourceInternal(Lcom/stryker/terminal/component/pm/SourceManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stryker/terminal/component/pm/SourceManager;",
            "Ljava/util/List<",
            "+",
            "Lcom/stryker/terminal/component/pm/Source;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/pm/SourceManager;->updateAll(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->postChangeSource(Lcom/stryker/terminal/component/pm/SourceManager;)V

    return-void
.end method

.method private final changeSourceToUserInput(Lcom/stryker/terminal/component/pm/SourceManager;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$layout;->dialog_edit_two_text:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$string;->input_new_source_url:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text2_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$string;->input_new_source_repo:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text_editor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_edit_text2_editor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    const-string v1, "stable main"

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lf/m;

    invoke-direct {v1, p0}, Lf/m;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/stryker/terminal/R$string;->pref_package_source:I

    invoke-virtual {v1, v2}, Lf/m;->setTitle(I)Lf/m;

    invoke-virtual {v1, v0}, Lf/m;->setView(Landroid/view/View;)Lf/m;

    const v0, 0x1040009

    invoke-virtual {v1, v0, v3}, Lf/m;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/ui/pm/b;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/stryker/terminal/ui/pm/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/Object;I)V

    const p1, 0x1040013

    invoke-virtual {v1, p1, v0}, Lf/m;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    invoke-virtual {v1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method private static final changeSourceToUserInput$lambda$8(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p4, "this$0"

    invoke-static {p2, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$sourceManager"

    invoke-static {p3, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    sget p4, Lcom/stryker/terminal/R$string;->error_new_source_url:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p5}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    sget p0, Lcom/stryker/terminal/R$string;->error_new_source_repo:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0, p5, v0}, Lcom/stryker/terminal/component/pm/SourceManager;->addSource(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p2, p3}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->postChangeSource(Lcom/stryker/terminal/component/pm/SourceManager;)V

    return-void
.end method

.method private static final comparator$lambda$0(Lcom/stryker/terminal/ui/pm/PackageModel;Lcom/stryker/terminal/ui/pm/PackageModel;)I
    .locals 0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final executeAptUpdate()V
    .locals 7

    const-string v1, "update"

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpdate$1;

    invoke-direct {v4, p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpdate$1;-><init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/stryker/terminal/utils/UtilsKt;->runApt$default(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;ILjava/lang/Object;)V

    return-void
.end method

.method private final executeAptUpgrade()V
    .locals 7

    const-string v1, "update"

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpgrade$1;

    invoke-direct {v4, p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpgrade$1;-><init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/stryker/terminal/utils/UtilsKt;->runApt$default(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lj5/p;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->sortDistance$lambda$14(Lj5/p;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final filter(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lcom/stryker/terminal/ui/pm/PackageModel;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Li5/a;->m(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-static {v3, p2, v4}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getDescription()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p2, v4}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object p1, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$filter$1;->INSTANCE:Lcom/stryker/terminal/ui/pm/PackageManagerActivity$filter$1;

    .line 63
    .line 64
    invoke-direct {p0, v0, p2, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->sortDistance(Ljava/util/List;Ljava/lang/String;Lj5/l;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object v1, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$filter$2;->INSTANCE:Lcom/stryker/terminal/ui/pm/PackageManagerActivity$filter$2;

    .line 69
    .line 70
    invoke-direct {p0, v0, p2, v1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->sortDistance(Ljava/util/List;Ljava/lang/String;Lj5/l;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p2, p1}, Lx4/m;->B0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-static {p1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lw4/c;

    .line 102
    .line 103
    iget-object v0, v0, Lw4/c;->a:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lcom/stryker/terminal/ui/pm/PackageModel;

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-static {p2}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->changeSource$lambda$7(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->changeSource$lambda$6(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->changeSourceToUserInput$lambda$8(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final installPackage(Ljava/lang/String;)Lw4/h;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    const-string v0, "-y"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$installPackage$1$1;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$installPackage$1$1;-><init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V

    const-string v1, "install"

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2, v0}, Lcom/stryker/terminal/utils/UtilsKt;->runApt(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;)V

    sget-object p1, Lw4/h;->a:Lw4/h;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static synthetic j(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->refreshPackageList$lambda$12(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V

    return-void
.end method

.method public static synthetic k(Lcom/stryker/terminal/ui/pm/PackageModel;Lcom/stryker/terminal/ui/pm/PackageModel;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->comparator$lambda$0(Lcom/stryker/terminal/ui/pm/PackageModel;Lcom/stryker/terminal/ui/pm/PackageModel;)I

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->refreshPackageList$lambda$12$lambda$11(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/List;Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->changeSource$lambda$5(Ljava/util/List;Landroid/content/DialogInterface;IZ)V

    return-void
.end method

.method private final postChangeSource(Lcom/stryker/terminal/component/pm/SourceManager;)V
    .locals 3

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/SourceManager;->applyChanges()V

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v1, Lcom/stryker/terminal/R$string;->key_package_source:I

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/SourceManager;->getMainPackageSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    sget-object v0, Lcom/stryker/terminal/component/pm/SourceHelper;->INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/pm/SourceHelper;->syncSource(Lcom/stryker/terminal/component/pm/SourceManager;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->executeAptUpdate()V

    return-void
.end method

.method private final refreshPackageList()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/stryker/terminal/ui/pm/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/pm/a;-><init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final refreshPackageList$lambda$12(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class v1, Lcom/stryker/terminal/component/pm/PackageComponent;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/pm/PackageComponent;

    sget-object v1, Lcom/stryker/terminal/component/pm/SourceHelper;->INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/SourceHelper;->detectSourceFiles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/PackageComponent;->clearPackages()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v0, v3, v2}, Lcom/stryker/terminal/component/pm/PackageComponent;->reloadPackages(Ljava/io/File;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/PackageComponent;->getPackages()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "pm.packages.values"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    new-instance v3, Lcom/stryker/terminal/ui/pm/PackageModel;

    const-string v4, "it"

    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/stryker/terminal/ui/pm/PackageModel;-><init>(Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->models:Ljava/util/List;

    new-instance v0, Lcom/stryker/terminal/ui/pm/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/ui/pm/a;-><init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final refreshPackageList$lambda$12$lambda$11(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getAdapter()Lcom/stryker/terminal/ui/pm/PackageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->edit()Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->models:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;->replaceAll(Ljava/util/List;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;->commit()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/stryker/terminal/R$string;->package_list_empty:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private final sortDistance(Ljava/util/List;Ljava/lang/String;Lj5/l;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;",
            "Ljava/lang/String;",
            "Lj5/l;",
            ")",
            "Ljava/util/List<",
            "Lw4/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/stryker/terminal/ui/pm/PackageModel;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/stryker/terminal/ui/pm/PackageModel;->getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {p3, v2}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 37
    .line 38
    const-string v4, "ROOT"

    .line 39
    .line 40
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v4, "this as java.lang.String).toLowerCase(locale)"

    .line 48
    .line 49
    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Lcom/stryker/terminal/utils/StringDistance;->distance(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Lw4/c;

    .line 68
    .line 69
    invoke-direct {v3, v1, v2}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    sget-object p1, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;->INSTANCE:Lcom/stryker/terminal/ui/pm/PackageManagerActivity$sortDistance$2;

    .line 77
    .line 78
    new-instance p2, Lcom/github/wrdlbrnft/sortedlistadapter/a;

    .line 79
    .line 80
    const/4 p3, 0x1

    .line 81
    invoke-direct {p2, p1, p3}, Lcom/github/wrdlbrnft/sortedlistadapter/a;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, p2}, Lx4/m;->C0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method

.method private static final sortDistance$lambda$14(Lj5/p;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lj5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getAdapter()Lcom/stryker/terminal/ui/pm/PackageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->adapter:Lcom/stryker/terminal/ui/pm/PackageAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->models:Ljava/util/List;

    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/stryker/terminal/R$layout;->ui_pm_single_tab:I

    invoke-virtual {p0, p1}, Lf/q;->setContentView(I)V

    sget p1, Lcom/stryker/terminal/R$id;->pm_toolbar:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lf/q;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lf/b;->m(Z)V

    :cond_0
    sget p1, Lcom/stryker/terminal/R$id;->pm_package_list:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.pm_package_list)"

    invoke-static {p1, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance p1, Lcom/stryker/terminal/ui/pm/PackageAdapter;

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->comparator:Ljava/util/Comparator;

    new-instance v1, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$onCreate$1;-><init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V

    invoke-direct {p1, p0, v0, v1}, Lcom/stryker/terminal/ui/pm/PackageAdapter;-><init>(Landroid/content/Context;Ljava/util/Comparator;Lcom/stryker/terminal/ui/pm/PackageAdapter$Listener;)V

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->setAdapter(Lcom/stryker/terminal/ui/pm/PackageAdapter;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getAdapter()Lcom/stryker/terminal/ui/pm/PackageAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->addCallback(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getAdapter()Lcom/stryker/terminal/ui/pm/PackageAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->refreshPackageList()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/q;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/stryker/terminal/R$menu;->menu_pm:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget v0, Lcom/stryker/terminal/R$id;->action_search:I

    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView"

    .line 24
    .line 25
    invoke-static {p1, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/r3;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public onEditFinished()V
    .locals 2

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onEditStarted()V
    .locals 2

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    sget v1, Lcom/stryker/terminal/R$id;->action_source:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->changeSource()V

    goto :goto_0

    :cond_1
    sget v1, Lcom/stryker/terminal/R$id;->action_update_and_refresh:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->executeAptUpdate()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/stryker/terminal/R$id;->action_refresh:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->refreshPackageList()V

    goto :goto_0

    :cond_3
    sget v1, Lcom/stryker/terminal/R$id;->action_upgrade:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->executeAptUpgrade()V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->getAdapter()Lcom/stryker/terminal/ui/pm/PackageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->edit()Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->models:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->filter(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;->replaceAll(Ljava/util/List;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;->commit()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final setAdapter(Lcom/stryker/terminal/ui/pm/PackageAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->adapter:Lcom/stryker/terminal/ui/pm/PackageAdapter;

    return-void
.end method

.method public final setModels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/ui/pm/PackageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->models:Ljava/util/List;

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

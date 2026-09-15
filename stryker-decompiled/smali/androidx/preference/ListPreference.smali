.class public Landroidx/preference/ListPreference;
.super Landroidx/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field public final m:[Ljava/lang/CharSequence;

.field public final n:[Ljava/lang/CharSequence;

.field public p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04017b

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Lv1/f;->u(Landroid/content/Context;II)I

    move-result v0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lw0/q;->d:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Landroidx/preference/ListPreference;->m:[Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Landroidx/preference/ListPreference;->n:[Ljava/lang/CharSequence;

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Ld/d;->d:Ld/d;

    if-nez v2, :cond_2

    .line 4
    new-instance v2, Ld/d;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ld/d;-><init>(I)V

    sput-object v2, Ld/d;->d:Ld/d;

    :cond_2
    sget-object v2, Ld/d;->d:Ld/d;

    iput-object v2, p0, Landroidx/preference/Preference;->l:Lw0/j;

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    .line 6
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lw0/q;->f:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x21

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    iput-object p2, p0, Landroidx/preference/ListPreference;->q:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->l:Lw0/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Ld/d;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ld/d;->n(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->l()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-super {p0}, Landroidx/preference/Preference;->a()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Landroidx/preference/ListPreference;->q:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    const/4 v3, 0x1

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    const-string v0, ""

    .line 31
    .line 32
    :cond_2
    const/4 v4, 0x0

    .line 33
    aput-object v0, v3, v4

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_3
    const-string v1, "ListPreference"

    .line 47
    .line 48
    const-string v2, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead."

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public final h(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l()Ljava/lang/CharSequence;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/preference/ListPreference;->p:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/preference/ListPreference;->n:[Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    add-int/lit8 v2, v2, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v2, :cond_1

    .line 13
    .line 14
    aget-object v3, v1, v2

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, -0x1

    .line 27
    :goto_1
    if-ltz v2, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/preference/ListPreference;->m:[Ljava/lang/CharSequence;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    aget-object v0, v0, v2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_2
    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/ListPreference;->p:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroidx/preference/ListPreference;->r:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/preference/ListPreference;->p:Ljava/lang/String;

    iput-boolean v1, p0, Landroidx/preference/ListPreference;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    :cond_1
    return-void
.end method

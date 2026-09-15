.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public m:I

.field public final n:I

.field public final p:I

.field public final q:I

.field public r:Z

.field public final s:Z

.field public final t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const v0, 0x7f040421

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lw0/q;->j:[I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x3

    .line 15
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput p2, p0, Landroidx/preference/SeekBarPreference;->n:I

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    const/16 v0, 0x64

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v1, p0, Landroidx/preference/SeekBarPreference;->n:I

    .line 29
    .line 30
    if-ge v0, v1, :cond_0

    .line 31
    .line 32
    move v0, v1

    .line 33
    :cond_0
    iget v1, p0, Landroidx/preference/SeekBarPreference;->p:I

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    iput v0, p0, Landroidx/preference/SeekBarPreference;->p:I

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 v0, 0x4

    .line 43
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget v1, p0, Landroidx/preference/SeekBarPreference;->q:I

    .line 48
    .line 49
    if-eq v0, v1, :cond_2

    .line 50
    .line 51
    iget v1, p0, Landroidx/preference/SeekBarPreference;->p:I

    .line 52
    .line 53
    iget v3, p0, Landroidx/preference/SeekBarPreference;->n:I

    .line 54
    .line 55
    sub-int/2addr v1, v3

    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Landroidx/preference/SeekBarPreference;->q:I

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    .line 67
    .line 68
    .line 69
    :cond_2
    const/4 v0, 0x2

    .line 70
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->s:Z

    .line 75
    .line 76
    const/4 p2, 0x5

    .line 77
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 78
    .line 79
    .line 80
    const/4 p2, 0x6

    .line 81
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->t:Z

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final h(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final l(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->n:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/preference/SeekBarPreference;->m:I

    if-eq p1, v0, :cond_2

    iget v1, p0, Landroidx/preference/SeekBarPreference;->n:I

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    iget v1, p0, Landroidx/preference/SeekBarPreference;->p:I

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    if-eq p1, v0, :cond_2

    iput p1, p0, Landroidx/preference/SeekBarPreference;->m:I

    :cond_2
    return-void
.end method

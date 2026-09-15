.class public final Ls4/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Lq4/b;

.field public b:Lv1/m;


# direct methods
.method public constructor <init>(Lq4/b;ILandroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls4/b;->a:Lq4/b;

    .line 5
    .line 6
    iget-object v0, p1, Lq4/b;->c:Lq4/a;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Lq4/a;->b(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iput p2, p1, Lq4/b;->d:I

    .line 13
    .line 14
    iget v0, p1, Lq4/b;->b:I

    .line 15
    .line 16
    if-ltz p2, :cond_0

    .line 17
    .line 18
    if-gt p2, v0, :cond_0

    .line 19
    .line 20
    const p2, 0x7f0d002f

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const v1, 0x7f0a034c

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/widget/TextView;

    .line 35
    .line 36
    iget v2, p1, Lq4/b;->a:I

    .line 37
    .line 38
    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const p3, 0x7f0a058e

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroid/widget/SeekBar;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 55
    .line 56
    .line 57
    iget p1, p1, Lq4/b;->d:I

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ls4/a;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Ls4/a;-><init>(Ls4/b;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p3, "Initial progress for channel: "

    .line 76
    .line 77
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-class p3, Lq4/b;

    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p3, " must be between 0 and "

    .line 90
    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method


# virtual methods
.method public getChannel()Lq4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/b;->a:Lq4/b;

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls4/b;->b:Lv1/m;

    return-void
.end method

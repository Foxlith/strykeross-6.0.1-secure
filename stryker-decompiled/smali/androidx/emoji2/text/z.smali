.class public final Landroidx/emoji2/text/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Spannable;


# instance fields
.field public a:Z

.field public b:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/emoji2/text/z;->a:Z

    iput-object p1, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/emoji2/text/z;->a:Z

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/emoji2/text/z;->a:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x1c

    .line 10
    .line 11
    const/16 v3, 0x9

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    new-instance v1, Ld/d;

    .line 16
    .line 17
    invoke-direct {v1, v3}, Ld/d;-><init>(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Landroidx/emoji2/text/y;

    .line 22
    .line 23
    invoke-direct {v1, v3}, Ld/d;-><init>(I)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v1, v0}, Ld/d;->l(Landroid/text/Spannable;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v1, Landroid/text/SpannableString;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    .line 38
    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Landroidx/emoji2/text/z;->a:Z

    .line 41
    .line 42
    return-void
.end method

.method public final charAt(I)C
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final chars()Ljava/util/stream/IntStream;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final codePoints()Ljava/util/stream/IntStream;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/text/z;->a()V

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/text/z;->a()V

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/z;->b:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

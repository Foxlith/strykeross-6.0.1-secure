.class public final Lr0/i;
.super Ld/d;
.source "SourceFile"


# instance fields
.field public final e:Lr0/h;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Ld/d;-><init>(I)V

    new-instance v0, Lr0/h;

    invoke-direct {v0, p1}, Lr0/h;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lr0/i;->e:Lr0/h;

    return-void
.end method


# virtual methods
.method public final d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 2

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    iget-object v0, p0, Lr0/i;->e:Lr0/h;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lr0/h;->d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/i;->e:Lr0/h;

    .line 2
    .line 3
    iget-boolean v0, v0, Lr0/h;->g:Z

    .line 4
    .line 5
    return v0
.end method

.method public final o(Z)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lr0/i;->e:Lr0/h;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lr0/h;->o(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    xor-int/2addr v0, v1

    .line 10
    iget-object v1, p0, Lr0/i;->e:Lr0/h;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-boolean p1, v1, Lr0/h;->g:Z

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v1, p1}, Lr0/h;->r(Z)V

    .line 18
    .line 19
    .line 20
    :goto_1
    return-void
.end method

.method public final u(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 2

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    iget-object v0, p0, Lr0/i;->e:Lr0/h;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lr0/h;->u(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

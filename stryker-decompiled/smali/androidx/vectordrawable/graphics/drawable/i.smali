.class public final Landroidx/vectordrawable/graphics/drawable/i;
.super Landroidx/vectordrawable/graphics/drawable/l;
.source "SourceFile"


# instance fields
.field public e:Ly/d;

.field public f:F

.field public g:Ly/d;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Landroid/graphics/Paint$Cap;

.field public n:Landroid/graphics/Paint$Join;

.field public o:F


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->g:Ly/d;

    invoke-virtual {v0}, Ly/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->e:Ly/d;

    invoke-virtual {v0}, Ly/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final b([I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->g:Ly/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly/d;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Ly/d;->b:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v1, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v4, v0, Ly/d;->c:I

    .line 22
    .line 23
    if-eq v1, v4, :cond_0

    .line 24
    .line 25
    iput v1, v0, Ly/d;->c:I

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_0
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/i;->e:Ly/d;

    .line 31
    .line 32
    invoke-virtual {v1}, Ly/d;->b()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-object v4, v1, Ly/d;->b:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget v4, v1, Ly/d;->c:I

    .line 49
    .line 50
    if-eq p1, v4, :cond_1

    .line 51
    .line 52
    iput p1, v1, Ly/d;->c:I

    .line 53
    .line 54
    move v2, v3

    .line 55
    :cond_1
    or-int p1, v0, v2

    .line 56
    .line 57
    return p1
.end method

.method public getFillAlpha()F
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->i:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->g:Ly/d;

    .line 2
    .line 3
    iget v0, v0, Ly/d;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->h:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->e:Ly/d;

    .line 2
    .line 3
    iget v0, v0, Ly/d;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->f:F

    return v0
.end method

.method public getTrimPathEnd()F
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->k:F

    return v0
.end method

.method public getTrimPathOffset()F
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->l:F

    return v0
.end method

.method public getTrimPathStart()F
    .locals 1

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->j:F

    return v0
.end method

.method public setFillAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/i;->i:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->g:Ly/d;

    .line 2
    .line 3
    iput p1, v0, Ly/d;->c:I

    .line 4
    .line 5
    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/i;->h:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->e:Ly/d;

    .line 2
    .line 3
    iput p1, v0, Ly/d;->c:I

    .line 4
    .line 5
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/i;->f:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/i;->k:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/i;->l:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/i;->j:F

    return-void
.end method

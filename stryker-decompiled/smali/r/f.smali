.class public Lr/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/d;


# instance fields
.field public a:Lr/o;

.field public b:Z

.field public c:Z

.field public final d:Lr/o;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lr/g;

.field public j:Z

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lr/o;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr/f;->a:Lr/o;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr/f;->b:Z

    iput-boolean v1, p0, Lr/f;->c:Z

    const/4 v2, 0x1

    iput v2, p0, Lr/f;->e:I

    iput v2, p0, Lr/f;->h:I

    iput-object v0, p0, Lr/f;->i:Lr/g;

    iput-boolean v1, p0, Lr/f;->j:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/f;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/f;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lr/f;->d:Lr/o;

    return-void
.end method


# virtual methods
.method public final a(Lr/d;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/f;

    iget-boolean v1, v1, Lr/f;->j:Z

    if-nez v1, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/f;->c:Z

    iget-object v1, p0, Lr/f;->a:Lr/o;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Lr/d;->a(Lr/d;)V

    :cond_2
    iget-boolean v1, p0, Lr/f;->b:Z

    if-eqz v1, :cond_3

    iget-object p1, p0, Lr/f;->d:Lr/o;

    invoke-interface {p1, p0}, Lr/d;->a(Lr/d;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr/f;

    instance-of v4, v3, Lr/g;

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_8

    if-ne v2, v0, :cond_8

    iget-boolean p1, v1, Lr/f;->j:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lr/f;->i:Lr/g;

    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lr/f;->j:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lr/f;->h:I

    iget p1, p1, Lr/f;->g:I

    mul-int/2addr v0, p1

    iput v0, p0, Lr/f;->f:I

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_1
    iget p1, v1, Lr/f;->g:I

    iget v0, p0, Lr/f;->f:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lr/f;->d(I)V

    :cond_8
    iget-object p1, p0, Lr/f;->a:Lr/o;

    if-eqz p1, :cond_9

    invoke-interface {p1, p0}, Lr/d;->a(Lr/d;)V

    :cond_9
    return-void
.end method

.method public final b(Lr/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lr/f;->j:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p1}, Lr/d;->a(Lr/d;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lr/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/f;->j:Z

    iput v0, p0, Lr/f;->g:I

    iput-boolean v0, p0, Lr/f;->c:Z

    iput-boolean v0, p0, Lr/f;->b:Z

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr/f;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/f;->j:Z

    iput p1, p0, Lr/f;->g:I

    iget-object p1, p0, Lr/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/d;

    invoke-interface {v0, v0}, Lr/d;->a(Lr/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lr/f;->d:Lr/o;

    .line 7
    .line 8
    iget-object v1, v1, Lr/o;->b:Lq/d;

    .line 9
    .line 10
    iget-object v1, v1, Lq/d;->h0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ":"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lr/f;->e:I

    .line 21
    .line 22
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->q(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "("

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lr/f;->j:Z

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget v1, p0, Lr/f;->g:I

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "unresolved"

    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ") <t="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lr/f;->l:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ":d="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lr/f;->k:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ">"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0
.end method

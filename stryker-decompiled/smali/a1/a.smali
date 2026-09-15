.class public final La1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La1/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, La1/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, La1/a;->c:Z

    .line 9
    .line 10
    iput p4, p0, La1/a;->d:I

    .line 11
    .line 12
    iput-object p5, p0, La1/a;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, La1/a;->f:I

    .line 15
    .line 16
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    const-string p3, "US"

    .line 19
    .line 20
    invoke-static {p1, p3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "this as java.lang.String).toUpperCase(locale)"

    .line 28
    .line 29
    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "INT"

    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-static {p1, p2, p3}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x3

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    const-string p2, "CHAR"

    .line 44
    .line 45
    invoke-static {p1, p2, p3}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_5

    .line 50
    .line 51
    const-string p2, "CLOB"

    .line 52
    .line 53
    invoke-static {p1, p2, p3}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_5

    .line 58
    .line 59
    const-string p2, "TEXT"

    .line 60
    .line 61
    invoke-static {p1, p2, p3}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const-string p2, "BLOB"

    .line 69
    .line 70
    invoke-static {p1, p2, p3}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    const/4 p1, 0x5

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const-string p2, "REAL"

    .line 79
    .line 80
    invoke-static {p1, p2, p3}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    const-string p2, "FLOA"

    .line 87
    .line 88
    invoke-static {p1, p2, p3}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_4

    .line 93
    .line 94
    const-string p2, "DOUB"

    .line 95
    .line 96
    invoke-static {p1, p2, p3}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const/4 p1, 0x1

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    :goto_0
    const/4 p1, 0x4

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    :goto_1
    const/4 p1, 0x2

    .line 108
    :goto_2
    iput p1, p0, La1/a;->g:I

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La1/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La1/a;

    iget v1, p1, La1/a;->d:I

    iget v3, p0, La1/a;->d:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, La1/a;->a:Ljava/lang/String;

    iget-object v3, p0, La1/a;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, La1/a;->c:Z

    iget-boolean v3, p1, La1/a;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p1, La1/a;->f:I

    iget-object v3, p1, La1/a;->e:Ljava/lang/String;

    const/4 v4, 0x2

    iget-object v5, p0, La1/a;->e:Ljava/lang/String;

    iget v6, p0, La1/a;->f:I

    if-ne v6, v0, :cond_5

    if-ne v1, v4, :cond_5

    if-eqz v5, :cond_5

    invoke-static {v5, v3}, Ld/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    return v2

    :cond_5
    if-ne v6, v4, :cond_6

    if-ne v1, v0, :cond_6

    if-eqz v3, :cond_6

    invoke-static {v3, v5}, Ld/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    return v2

    :cond_6
    if-eqz v6, :cond_8

    if-ne v6, v1, :cond_8

    if-eqz v5, :cond_7

    invoke-static {v5, v3}, Ld/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    :goto_0
    return v2

    :cond_8
    iget v1, p0, La1/a;->g:I

    iget p1, p1, La1/a;->g:I

    if-ne v1, p1, :cond_9

    goto :goto_1

    :cond_9
    move v0, v2

    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, La1/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La1/a;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, La1/a;->c:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La1/a;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Column{name=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, La1/a;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', type=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La1/a;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', affinity=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, La1/a;->g:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', notNull="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, La1/a;->c:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", primaryKeyPosition="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, La1/a;->d:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", defaultValue=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, La1/a;->e:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    const-string v1, "undefined"

    .line 63
    .line 64
    :cond_0
    const-string v2, "\'}"

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.class public final Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:[J

.field public c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ln/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/e;->a:Z

    if-nez p1, :cond_0

    sget-object p1, Ln/d;->b:[J

    iput-object p1, p0, Ln/e;->b:[J

    sget-object p1, Ln/d;->c:[Ljava/lang/Object;

    iput-object p1, p0, Ln/e;->c:[Ljava/lang/Object;

    goto :goto_2

    :cond_0
    mul-int/lit8 p1, p1, 0x8

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_2
    :goto_1
    div-int/lit8 p1, p1, 0x8

    .line 3
    new-array v0, p1, [J

    iput-object v0, p0, Ln/e;->b:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ln/e;->c:[Ljava/lang/Object;

    :goto_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget v0, p0, Ln/e;->d:I

    iget-object v1, p0, Ln/e;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Ln/e;->d:I

    iput-boolean v2, p0, Ln/e;->a:Z

    return-void
.end method

.method public final b()Ln/e;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/e;

    iget-object v1, p0, Ln/e;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ln/e;->b:[J

    iget-object v1, p0, Ln/e;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Ln/e;->c:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final c()V
    .locals 9

    .line 1
    iget v0, p0, Ln/e;->d:I

    iget-object v1, p0, Ln/e;->b:[J

    iget-object v2, p0, Ln/e;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v6, v2, v4

    sget-object v7, Ln/e;->e:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Ln/e;->a:Z

    iput v5, p0, Ln/e;->d:I

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln/e;->b()Ln/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Long;J)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ln/e;->b:[J

    iget v1, p0, Ln/e;->d:I

    invoke-static {p2, p3, v0, v1}, Ln/d;->b(J[JI)I

    move-result p2

    if-ltz p2, :cond_1

    iget-object p3, p0, Ln/e;->c:[Ljava/lang/Object;

    aget-object p2, p3, p2

    sget-object p3, Ln/e;->e:Ljava/lang/Object;

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final e(I)J
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln/e;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln/e;->c()V

    :cond_0
    iget-object v0, p0, Ln/e;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final f(Ljava/lang/Object;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln/e;->b:[J

    .line 2
    .line 3
    iget v1, p0, Ln/e;->d:I

    .line 4
    .line 5
    invoke-static {p2, p3, v0, v1}, Ln/d;->b(J[JI)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Ln/e;->c:[Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p1, p2, v0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    not-int v0, v0

    .line 18
    iget v1, p0, Ln/e;->d:I

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Ln/e;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v3, v2, v0

    .line 25
    .line 26
    sget-object v4, Ln/e;->e:Ljava/lang/Object;

    .line 27
    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Ln/e;->b:[J

    .line 31
    .line 32
    aput-wide p2, v1, v0

    .line 33
    .line 34
    aput-object p1, v2, v0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-boolean v2, p0, Ln/e;->a:Z

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Ln/e;->b:[J

    .line 42
    .line 43
    array-length v2, v2

    .line 44
    if-lt v1, v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Ln/e;->c()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Ln/e;->b:[J

    .line 50
    .line 51
    iget v1, p0, Ln/e;->d:I

    .line 52
    .line 53
    invoke-static {p2, p3, v0, v1}, Ln/d;->b(J[JI)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    not-int v0, v0

    .line 58
    :cond_2
    iget v1, p0, Ln/e;->d:I

    .line 59
    .line 60
    iget-object v2, p0, Ln/e;->b:[J

    .line 61
    .line 62
    array-length v2, v2

    .line 63
    const/4 v3, 0x1

    .line 64
    if-lt v1, v2, :cond_5

    .line 65
    .line 66
    add-int/2addr v1, v3

    .line 67
    mul-int/lit8 v1, v1, 0x8

    .line 68
    .line 69
    const/4 v2, 0x4

    .line 70
    :goto_0
    const/16 v4, 0x20

    .line 71
    .line 72
    if-ge v2, v4, :cond_4

    .line 73
    .line 74
    shl-int v4, v3, v2

    .line 75
    .line 76
    add-int/lit8 v4, v4, -0xc

    .line 77
    .line 78
    if-gt v1, v4, :cond_3

    .line 79
    .line 80
    move v1, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    :goto_1
    div-int/lit8 v1, v1, 0x8

    .line 86
    .line 87
    new-array v2, v1, [J

    .line 88
    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v4, p0, Ln/e;->b:[J

    .line 92
    .line 93
    array-length v5, v4

    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Ln/e;->c:[Ljava/lang/Object;

    .line 99
    .line 100
    array-length v5, v4

    .line 101
    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Ln/e;->b:[J

    .line 105
    .line 106
    iput-object v1, p0, Ln/e;->c:[Ljava/lang/Object;

    .line 107
    .line 108
    :cond_5
    iget v1, p0, Ln/e;->d:I

    .line 109
    .line 110
    sub-int/2addr v1, v0

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    iget-object v2, p0, Ln/e;->b:[J

    .line 114
    .line 115
    add-int/lit8 v4, v0, 0x1

    .line 116
    .line 117
    invoke-static {v2, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Ln/e;->c:[Ljava/lang/Object;

    .line 121
    .line 122
    iget v2, p0, Ln/e;->d:I

    .line 123
    .line 124
    sub-int/2addr v2, v0

    .line 125
    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    .line 127
    .line 128
    :cond_6
    iget-object v1, p0, Ln/e;->b:[J

    .line 129
    .line 130
    aput-wide p2, v1, v0

    .line 131
    .line 132
    iget-object p2, p0, Ln/e;->c:[Ljava/lang/Object;

    .line 133
    .line 134
    aput-object p1, p2, v0

    .line 135
    .line 136
    iget p1, p0, Ln/e;->d:I

    .line 137
    .line 138
    add-int/2addr p1, v3

    .line 139
    iput p1, p0, Ln/e;->d:I

    .line 140
    .line 141
    :goto_2
    return-void
.end method

.method public final g(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln/e;->b:[J

    iget v1, p0, Ln/e;->d:I

    invoke-static {p1, p2, v0, v1}, Ln/d;->b(J[JI)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Ln/e;->c:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Ln/e;->e:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    aput-object v1, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln/e;->a:Z

    :cond_0
    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/e;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln/e;->c()V

    :cond_0
    iget v0, p0, Ln/e;->d:I

    return v0
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/e;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln/e;->c()V

    :cond_0
    iget-object v0, p0, Ln/e;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln/e;->h()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ln/e;->d:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ln/e;->d:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Ln/e;->e(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ln/e;->i(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

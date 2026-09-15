.class public final Lg5/b;
.super Lg5/a;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:[Ljava/io/File;

.field public d:I

.field public e:Z

.field public final synthetic f:Lg5/e;


# direct methods
.method public constructor <init>(Lg5/e;Ljava/io/File;)V
    .locals 1

    .line 1
    const-string v0, "rootDir"

    .line 2
    .line 3
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lg5/b;->f:Lg5/e;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lg5/f;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lg5/b;->e:Z

    .line 2
    .line 3
    iget-object v1, p0, Lg5/f;->a:Ljava/io/File;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lg5/b;->f:Lg5/e;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lg5/b;->c:[Ljava/io/File;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v3, Lg5/e;->d:Lg5/g;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lg5/b;->c:[Ljava/io/File;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v3, Lg5/e;->d:Lg5/g;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iput-boolean v2, p0, Lg5/b;->e:Z

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lg5/b;->c:[Ljava/io/File;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget v4, p0, Lg5/b;->d:I

    .line 39
    .line 40
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    array-length v0, v0

    .line 44
    if-ge v4, v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lg5/b;->c:[Ljava/io/File;

    .line 47
    .line 48
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lg5/b;->d:I

    .line 52
    .line 53
    add-int/lit8 v2, v1, 0x1

    .line 54
    .line 55
    iput v2, p0, Lg5/b;->d:I

    .line 56
    .line 57
    aget-object v0, v0, v1

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_1
    iget-boolean v0, p0, Lg5/b;->b:Z

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    iput-boolean v2, p0, Lg5/b;->b:Z

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_2
    iget-object v0, v3, Lg5/e;->d:Lg5/g;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    return-object v0
.end method

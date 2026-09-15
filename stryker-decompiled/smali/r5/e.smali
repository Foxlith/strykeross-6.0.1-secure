.class public abstract Lr5/e;
.super La5/a;
.source "SourceFile"

# interfaces
.implements La5/g;


# static fields
.field public static final a:Lr5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr5/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lr5/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr5/e;->a:Lr5/d;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, La5/f;->a:La5/f;

    invoke-direct {p0, v0}, La5/a;-><init>(La5/i;)V

    return-void
.end method


# virtual methods
.method public final get(La5/i;)La5/h;
    .locals 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, La5/b;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    check-cast p1, La5/b;

    .line 12
    .line 13
    invoke-virtual {p0}, La5/a;->getKey()La5/i;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eq v1, p1, :cond_0

    .line 21
    .line 22
    iget-object v0, p1, La5/b;->b:La5/i;

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    :cond_0
    iget-object p1, p1, La5/b;->a:Lj5/l;

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, La5/h;

    .line 33
    .line 34
    instance-of v0, p1, La5/h;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    move-object v2, p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, La5/f;->a:La5/f;

    .line 41
    .line 42
    if-ne v0, p1, :cond_2

    .line 43
    .line 44
    move-object v2, p0

    .line 45
    :cond_2
    :goto_0
    return-object v2
.end method

.method public abstract i(La5/j;Ljava/lang/Runnable;)V
.end method

.method public final minusKey(La5/i;)La5/j;
    .locals 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, La5/b;

    .line 7
    .line 8
    sget-object v2, La5/k;->a:La5/k;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    check-cast p1, La5/b;

    .line 13
    .line 14
    invoke-virtual {p0}, La5/a;->getKey()La5/i;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eq v1, p1, :cond_0

    .line 22
    .line 23
    iget-object v0, p1, La5/b;->b:La5/i;

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p1, La5/b;->a:Lj5/l;

    .line 28
    .line 29
    invoke-interface {p1, p0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, La5/h;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v2, p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, La5/f;->a:La5/f;

    .line 41
    .line 42
    if-ne v0, p1, :cond_1

    .line 43
    .line 44
    :goto_0
    return-object v2
.end method

.method public s()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lr5/v;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

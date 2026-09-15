.class public abstract Lkotlin/jvm/internal/h;
.super Lkotlin/jvm/internal/b;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/g;
.implements Lo5/e;


# instance fields
.field private final arity:I

.field private final flags:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/b;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    iput p1, p0, Lkotlin/jvm/internal/h;->arity:I

    const/4 p1, 0x0

    iput p1, p0, Lkotlin/jvm/internal/h;->flags:I

    return-void
.end method


# virtual methods
.method public computeReflected()Lo5/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/p;->a:Lkotlin/jvm/internal/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/jvm/internal/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lkotlin/jvm/internal/h;

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/b;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/b;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lkotlin/jvm/internal/h;->flags:I

    iget v3, p1, Lkotlin/jvm/internal/h;->flags:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lkotlin/jvm/internal/h;->arity:I

    iget v3, p1, Lkotlin/jvm/internal/h;->arity:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/b;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getOwner()Lo5/d;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/b;->getOwner()Lo5/d;

    move-result-object p1

    invoke-static {v1, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    instance-of v0, p1, Lo5/e;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->compute()Lo5/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public getArity()I
    .locals 1

    iget v0, p0, Lkotlin/jvm/internal/h;->arity:I

    return v0
.end method

.method public bridge synthetic getReflected()Lo5/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/h;->getReflected()Lo5/e;

    move-result-object v0

    return-object v0
.end method

.method public getReflected()Lo5/e;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->compute()Lo5/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3
    check-cast v0, Lo5/e;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Li5/b;

    const-string v1, "Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 6
    throw v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getOwner()Lo5/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getOwner()Lo5/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_0
    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/h;->getReflected()Lo5/e;

    move-result-object v0

    invoke-interface {v0}, Lo5/e;->isExternal()Z

    move-result v0

    return v0
.end method

.method public isInfix()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/h;->getReflected()Lo5/e;

    move-result-object v0

    invoke-interface {v0}, Lo5/e;->isInfix()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/h;->getReflected()Lo5/e;

    move-result-object v0

    invoke-interface {v0}, Lo5/e;->isInline()Z

    move-result v0

    return v0
.end method

.method public isOperator()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/h;->getReflected()Lo5/e;

    move-result-object v0

    invoke-interface {v0}, Lo5/e;->isOperator()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/h;->getReflected()Lo5/e;

    move-result-object v0

    invoke-interface {v0}, Lo5/e;->isSuspend()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->compute()Lo5/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<init>"

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "constructor (Kotlin reflection is not available)"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

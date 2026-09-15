.class Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final certIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/cert/path/CertPathValidationException;",
            ">;"
        }
    .end annotation
.end field

.field private final ruleIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    return-void
.end method

.method private toInts(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addException(IILorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    invoke-static {p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Lorg/bouncycastle/cert/path/CertPathValidationResult;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->toInts(Ljava/util/List;)[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->toInts(Ljava/util/List;)[I

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;[I[I[Lorg/bouncycastle/cert/path/CertPathValidationException;)V

    return-object v0
.end method

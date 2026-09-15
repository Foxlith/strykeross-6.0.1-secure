.class public Lorg/bouncycastle/oer/OERDefinition$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# instance fields
.field public final baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/OERDefinition$Element;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

.field public final enumValue:Ljava/math/BigInteger;

.field public final explicit:Z

.field public final extensionsInDefinition:Z

.field public final label:Ljava/lang/String;

.field public final lowerBound:Ljava/math/BigInteger;

.field private optionalChildrenInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/OERDefinition$Element;",
            ">;"
        }
    .end annotation
.end field

.field public final upperBound:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/oer/OERDefinition$BaseType;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/OERDefinition$Element;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Z",
            "Ljava/math/BigInteger;",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    iput-object p2, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    iput-boolean p3, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->explicit:Z

    iput-object p4, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->label:Ljava/lang/String;

    iput-object p5, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->lowerBound:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->upperBound:Ljava/math/BigInteger;

    iput-boolean p7, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->extensionsInDefinition:Z

    iput-object p8, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->enumValue:Ljava/math/BigInteger;

    iput-object p9, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method


# virtual methods
.method public appendLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->label:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->explicit:Z

    if-eqz v1, :cond_1

    const-string v2, " (E)"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public canBeNegative()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->lowerBound:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getFirstChid()Lorg/bouncycastle/oer/OERDefinition$Element;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$Element;

    return-object v0
.end method

.method public hasDefaultChildren()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/OERDefinition$Element;

    iget-object v1, v1, Lorg/bouncycastle/oer/OERDefinition$Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasPopulatedExtension()Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/OERDefinition$Element;

    iget-object v1, v1, Lorg/bouncycastle/oer/OERDefinition$Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public intBytesForRange()I
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->lowerBound:Ljava/math/BigInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->upperBound:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->access$000()[Ljava/math/BigInteger;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->upperBound:Ljava/math/BigInteger;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->access$000()[Ljava/math/BigInteger;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v2

    :goto_1
    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->access$100()[[Ljava/math/BigInteger;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->lowerBound:Ljava/math/BigInteger;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->access$100()[[Ljava/math/BigInteger;

    move-result-object v5

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->upperBound:Ljava/math/BigInteger;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->access$100()[[Ljava/math/BigInteger;

    move-result-object v5

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_2

    neg-int v0, v3

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    return v1
.end method

.method public isFixedLength()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->lowerBound:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->upperBound:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowerRangeZero()Z
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->lowerBound:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnbounded()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->upperBound:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->lowerBound:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsignedWithRange()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Element;->isLowerRangeZero()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->upperBound:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public optionalOrDefaultChildrenInOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/OERDefinition$Element;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->optionalChildrenInOrder:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/OERDefinition$Element;

    iget-boolean v3, v2, Lorg/bouncycastle/oer/OERDefinition$Element;->explicit:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->optionalChildrenInOrder:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->optionalChildrenInOrder:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rangeExpression()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->lowerBound:Ljava/math/BigInteger;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "MIN"

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " ... "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Element;->upperBound:Ljava/math/BigInteger;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v1, "MAX"

    .line 37
    .line 38
    :goto_1
    const-string v2, ")"

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

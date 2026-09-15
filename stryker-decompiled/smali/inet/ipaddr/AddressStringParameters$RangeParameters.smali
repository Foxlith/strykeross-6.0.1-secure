.class public Linet/ipaddr/AddressStringParameters$RangeParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/AddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/AddressStringParameters$RangeParameters;",
        ">;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final NO_RANGE:Linet/ipaddr/AddressStringParameters$RangeParameters;

.field public static final WILDCARD_AND_RANGE:Linet/ipaddr/AddressStringParameters$RangeParameters;

.field public static final WILDCARD_ONLY:Linet/ipaddr/AddressStringParameters$RangeParameters;

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final allowInferredBoundary:Z

.field private final allowReverse:Z

.field private final range:Z

.field private final singleWildcard:Z

.field private final wildcard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Linet/ipaddr/AddressStringParameters$RangeParameters;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/AddressStringParameters$RangeParameters;-><init>(ZZZZZ)V

    sput-object v6, Linet/ipaddr/AddressStringParameters$RangeParameters;->NO_RANGE:Linet/ipaddr/AddressStringParameters$RangeParameters;

    new-instance v0, Linet/ipaddr/AddressStringParameters$RangeParameters;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Linet/ipaddr/AddressStringParameters$RangeParameters;-><init>(ZZZZZ)V

    sput-object v0, Linet/ipaddr/AddressStringParameters$RangeParameters;->WILDCARD_ONLY:Linet/ipaddr/AddressStringParameters$RangeParameters;

    new-instance v0, Linet/ipaddr/AddressStringParameters$RangeParameters;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Linet/ipaddr/AddressStringParameters$RangeParameters;-><init>(ZZZZZ)V

    sput-object v0, Linet/ipaddr/AddressStringParameters$RangeParameters;->WILDCARD_AND_RANGE:Linet/ipaddr/AddressStringParameters$RangeParameters;

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->wildcard:Z

    iput-boolean p2, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->range:Z

    iput-boolean p3, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowReverse:Z

    iput-boolean p4, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowInferredBoundary:Z

    iput-boolean p5, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->singleWildcard:Z

    return-void
.end method


# virtual methods
.method public allowsInferredBoundary()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowInferredBoundary:Z

    return v0
.end method

.method public allowsRangeSeparator()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->range:Z

    return v0
.end method

.method public allowsReverseRange()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowReverse:Z

    return v0
.end method

.method public allowsSingleWildcard()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->singleWildcard:Z

    return v0
.end method

.method public allowsWildcard()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->wildcard:Z

    return v0
.end method

.method public clone()Linet/ipaddr/AddressStringParameters$RangeParameters;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/AddressStringParameters$RangeParameters;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/AddressStringParameters$RangeParameters;->clone()Linet/ipaddr/AddressStringParameters$RangeParameters;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Linet/ipaddr/AddressStringParameters$RangeParameters;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->wildcard:Z

    iget-boolean v1, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->wildcard:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->range:Z

    iget-boolean v1, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->range:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->singleWildcard:Z

    iget-boolean v1, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->singleWildcard:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowReverse:Z

    iget-boolean v1, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowReverse:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowInferredBoundary:Z

    iget-boolean p1, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowInferredBoundary:Z

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {p0, p1}, Linet/ipaddr/AddressStringParameters$RangeParameters;->compareTo(Linet/ipaddr/AddressStringParameters$RangeParameters;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/AddressStringParameters$RangeParameters;

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->wildcard:Z

    iget-boolean v3, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->wildcard:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->range:Z

    iget-boolean v3, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->range:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowReverse:Z

    iget-boolean v3, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowReverse:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowInferredBoundary:Z

    iget-boolean v3, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowInferredBoundary:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->singleWildcard:Z

    iget-boolean p1, p1, Linet/ipaddr/AddressStringParameters$RangeParameters;->singleWildcard:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->wildcard:Z

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->range:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->singleWildcard:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method public isNoRange()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->wildcard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->range:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$RangeParameters;->singleWildcard:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

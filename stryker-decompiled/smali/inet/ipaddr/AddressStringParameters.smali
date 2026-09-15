.class public Linet/ipaddr/AddressStringParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;,
        Linet/ipaddr/AddressStringParameters$BuilderBase;,
        Linet/ipaddr/AddressStringParameters$RangeParameters;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_ALL:Z = true

.field public static final DEFAULT_ALLOW_EMPTY:Z = true

.field public static final DEFAULT_ALLOW_SINGLE_SEGMENT:Z = true

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final allowAll:Z

.field public final allowEmpty:Z

.field public final allowSingleSegment:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    iput-boolean p2, p0, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    iput-boolean p3, p0, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    return-void
.end method


# virtual methods
.method public clone()Linet/ipaddr/AddressStringParameters;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/AddressStringParameters;
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
    invoke-virtual {p0}, Linet/ipaddr/AddressStringParameters;->clone()Linet/ipaddr/AddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Linet/ipaddr/AddressStringParameters;)I
    .locals 2

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    iget-boolean v1, p1, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    iget-boolean v1, p1, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    iget-boolean p1, p1, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/AddressStringParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/AddressStringParameters;

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    iget-boolean v2, p1, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    iget-boolean v2, p1, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    iget-boolean p1, p1, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toBuilder(Linet/ipaddr/AddressStringParameters$BuilderBase;)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    iput-boolean v0, p1, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowAll:Z

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    iput-boolean v0, p1, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowEmpty:Z

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    iput-boolean v0, p1, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowSingleSegment:Z

    return-object p1
.end method

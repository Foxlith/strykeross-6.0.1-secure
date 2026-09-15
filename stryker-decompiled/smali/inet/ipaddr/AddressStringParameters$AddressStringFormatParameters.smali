.class public Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/AddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressStringFormatParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_LEADING_ZEROS:Z = true

.field public static final DEFAULT_ALLOW_UNLIMITED_LEADING_ZEROS:Z = true

.field public static final DEFAULT_ALLOW_WILDCARDED_SEPARATOR:Z = true

.field public static final DEFAULT_RANGE_OPTIONS:Linet/ipaddr/AddressStringParameters$RangeParameters;

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final allowLeadingZeros:Z

.field public final allowUnlimitedLeadingZeros:Z

.field public final allowWildcardedSeparator:Z

.field public final rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Linet/ipaddr/AddressStringParameters$RangeParameters;->WILDCARD_AND_RANGE:Linet/ipaddr/AddressStringParameters$RangeParameters;

    sput-object v0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->DEFAULT_RANGE_OPTIONS:Linet/ipaddr/AddressStringParameters$RangeParameters;

    return-void
.end method

.method public constructor <init>(ZZLinet/ipaddr/AddressStringParameters$RangeParameters;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p4, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    iput-boolean p2, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    return-void
.end method


# virtual methods
.method public compareTo(Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    iget-object v1, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0, v1}, Linet/ipaddr/AddressStringParameters$RangeParameters;->compareTo(Linet/ipaddr/AddressStringParameters$RangeParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    iget-boolean v1, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    iget-boolean p1, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;

    iget-object v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    iget-object v2, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0, v2}, Linet/ipaddr/AddressStringParameters$RangeParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    iget-boolean v2, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    iget-boolean v2, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    iget-boolean p1, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0}, Linet/ipaddr/AddressStringParameters$RangeParameters;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x8

    :cond_0
    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    :cond_2
    return v0
.end method

.method public toBuilder(Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    iput-boolean v0, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros:Z

    iget-object v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    iput-object v0, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    iput-boolean v0, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator:Z

    iget-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    iput-boolean v0, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros:Z

    return-object p1
.end method

.class public Linet/ipaddr/MACAddressStringParameters;
.super Linet/ipaddr/AddressStringParameters;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;,
        Linet/ipaddr/MACAddressStringParameters$Builder;,
        Linet/ipaddr/MACAddressStringParameters$AddressSize;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/AddressStringParameters;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/MACAddressStringParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_COLON_DELIMITED:Z = true

.field public static final DEFAULT_ALLOW_DASHED:Z = true

.field public static final DEFAULT_ALLOW_DOTTED:Z = true

.field public static final DEFAULT_ALLOW_SINGLE_DASHED:Z = true

.field public static final DEFAULT_ALLOW_SPACE_DELIMITED:Z = true

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

.field public final allowColonDelimited:Z

.field public final allowDashed:Z

.field public final allowDotted:Z

.field public final allowSingleDashed:Z

.field public final allowSpaceDelimited:Z

.field private formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

.field private final network:Linet/ipaddr/mac/MACAddressNetwork;


# direct methods
.method public constructor <init>(ZZLinet/ipaddr/MACAddressStringParameters$AddressSize;ZZZZZZLinet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;Linet/ipaddr/mac/MACAddressNetwork;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Linet/ipaddr/AddressStringParameters;-><init>(ZZZ)V

    iput-boolean p5, p0, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    iput-boolean p6, p0, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    iput-boolean p7, p0, Linet/ipaddr/MACAddressStringParameters;->allowColonDelimited:Z

    iput-boolean p8, p0, Linet/ipaddr/MACAddressStringParameters;->allowDotted:Z

    iput-boolean p9, p0, Linet/ipaddr/MACAddressStringParameters;->allowSpaceDelimited:Z

    iput-object p10, p0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    iput-object p3, p0, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    iput-object p11, p0, Linet/ipaddr/MACAddressStringParameters;->network:Linet/ipaddr/mac/MACAddressNetwork;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Linet/ipaddr/AddressStringParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/MACAddressStringParameters;->clone()Linet/ipaddr/MACAddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/MACAddressStringParameters;
    .locals 2

    .line 2
    invoke-super {p0}, Linet/ipaddr/AddressStringParameters;->clone()Linet/ipaddr/AddressStringParameters;

    move-result-object v0

    check-cast v0, Linet/ipaddr/MACAddressStringParameters;

    iget-object v1, p0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    invoke-virtual {v1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->clone()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/MACAddressStringParameters;->clone()Linet/ipaddr/MACAddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Linet/ipaddr/MACAddressStringParameters;)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters;->compareTo(Linet/ipaddr/AddressStringParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    iget-object v1, p1, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    invoke-virtual {v0, v1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->compareTo(Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    iget-boolean v1, p1, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    iget-boolean v1, p1, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters;->allowColonDelimited:Z

    iget-boolean v1, p1, Linet/ipaddr/MACAddressStringParameters;->allowColonDelimited:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters;->allowDotted:Z

    iget-boolean v1, p1, Linet/ipaddr/MACAddressStringParameters;->allowDotted:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters;->allowSpaceDelimited:Z

    iget-boolean v1, p1, Linet/ipaddr/MACAddressStringParameters;->allowSpaceDelimited:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p1, p1, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/MACAddressStringParameters;

    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters;->compareTo(Linet/ipaddr/MACAddressStringParameters;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/MACAddressStringParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Linet/ipaddr/MACAddressStringParameters;

    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    iget-object v2, v0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    invoke-virtual {p1, v2}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    iget-boolean v2, v0, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    iget-boolean v2, v0, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters;->allowColonDelimited:Z

    iget-boolean v2, v0, Linet/ipaddr/MACAddressStringParameters;->allowColonDelimited:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters;->allowDotted:Z

    iget-boolean v2, v0, Linet/ipaddr/MACAddressStringParameters;->allowDotted:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters;->allowSpaceDelimited:Z

    iget-boolean v2, v0, Linet/ipaddr/MACAddressStringParameters;->allowSpaceDelimited:Z

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    iget-object v0, v0, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getFormatParameters()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/mac/MACAddressNetwork;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters;->network:Linet/ipaddr/mac/MACAddressNetwork;

    if-nez v0, :cond_0

    invoke-static {}, Linet/ipaddr/Address;->defaultMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    invoke-virtual {v0}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x80

    :cond_0
    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x100

    :cond_1
    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowColonDelimited:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    :cond_2
    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowDotted:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    :cond_3
    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowSpaceDelimited:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x800

    :cond_4
    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x1000

    :cond_5
    iget-object v1, p0, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    sget-object v2, Linet/ipaddr/MACAddressStringParameters$AddressSize;->MAC:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne v1, v2, :cond_6

    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :cond_6
    sget-object v2, Linet/ipaddr/MACAddressStringParameters$AddressSize;->EUI64:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne v1, v2, :cond_7

    or-int/lit16 v0, v0, 0x4000

    :cond_7
    :goto_0
    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    if-eqz v1, :cond_8

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :cond_9
    return v0
.end method

.method public toBuilder()Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 2

    new-instance v0, Linet/ipaddr/MACAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/MACAddressStringParameters$Builder;-><init>()V

    invoke-super {p0, v0}, Linet/ipaddr/AddressStringParameters;->toBuilder(Linet/ipaddr/AddressStringParameters$BuilderBase;)Linet/ipaddr/AddressStringParameters$BuilderBase;

    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    invoke-static {v0, v1}, Linet/ipaddr/MACAddressStringParameters$Builder;->access$002(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    invoke-static {v0, v1}, Linet/ipaddr/MACAddressStringParameters$Builder;->access$102(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowColonDelimited:Z

    invoke-static {v0, v1}, Linet/ipaddr/MACAddressStringParameters$Builder;->access$202(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowDotted:Z

    invoke-static {v0, v1}, Linet/ipaddr/MACAddressStringParameters$Builder;->access$302(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters;->allowSpaceDelimited:Z

    invoke-static {v0, v1}, Linet/ipaddr/MACAddressStringParameters$Builder;->access$402(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z

    iget-object v1, p0, Linet/ipaddr/MACAddressStringParameters;->formatOpts:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    invoke-virtual {v1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->toBuilder()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/MACAddressStringParameters$Builder;->formatBuilder:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    iget-object v1, p0, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    invoke-static {v0, v1}, Linet/ipaddr/MACAddressStringParameters$Builder;->access$502(Linet/ipaddr/MACAddressStringParameters$Builder;Linet/ipaddr/MACAddressStringParameters$AddressSize;)Linet/ipaddr/MACAddressStringParameters$AddressSize;

    iget-object v1, p0, Linet/ipaddr/MACAddressStringParameters;->network:Linet/ipaddr/mac/MACAddressNetwork;

    invoke-static {v0, v1}, Linet/ipaddr/MACAddressStringParameters$Builder;->access$602(Linet/ipaddr/MACAddressStringParameters$Builder;Linet/ipaddr/mac/MACAddressNetwork;)Linet/ipaddr/mac/MACAddressNetwork;

    return-object v0
.end method

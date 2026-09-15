.class public Linet/ipaddr/MACAddressStringParameters$Builder;
.super Linet/ipaddr/AddressStringParameters$BuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/MACAddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static DEFAULT_FORMAT_OPTS:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;


# instance fields
.field private allAddresses:Linet/ipaddr/MACAddressStringParameters$AddressSize;

.field private allowColonDelimited:Z

.field private allowDashed:Z

.field private allowDotted:Z

.field private allowSingleDashed:Z

.field private allowSpaceDelimited:Z

.field formatBuilder:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

.field private network:Linet/ipaddr/mac/MACAddressNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->toParams()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/MACAddressStringParameters$Builder;->DEFAULT_FORMAT_OPTS:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/AddressStringParameters$BuilderBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowDashed:Z

    iput-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowSingleDashed:Z

    iput-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowColonDelimited:Z

    iput-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowDotted:Z

    iput-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowSpaceDelimited:Z

    return-void
.end method

.method public static synthetic access$002(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowDashed:Z

    return p1
.end method

.method public static synthetic access$102(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowSingleDashed:Z

    return p1
.end method

.method public static synthetic access$202(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowColonDelimited:Z

    return p1
.end method

.method public static synthetic access$302(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowDotted:Z

    return p1
.end method

.method public static synthetic access$402(Linet/ipaddr/MACAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowSpaceDelimited:Z

    return p1
.end method

.method public static synthetic access$502(Linet/ipaddr/MACAddressStringParameters$Builder;Linet/ipaddr/MACAddressStringParameters$AddressSize;)Linet/ipaddr/MACAddressStringParameters$AddressSize;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allAddresses:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    return-object p1
.end method

.method public static synthetic access$602(Linet/ipaddr/MACAddressStringParameters$Builder;Linet/ipaddr/mac/MACAddressNetwork;)Linet/ipaddr/mac/MACAddressNetwork;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->network:Linet/ipaddr/mac/MACAddressNetwork;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic allowAll(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters$Builder;->allowAll(Z)Linet/ipaddr/MACAddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowAll(Z)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowAll(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/MACAddressStringParameters$Builder;

    return-object p1
.end method

.method public allowColonDelimited(Z)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowColonDelimited:Z

    return-object p0
.end method

.method public allowDashed(Z)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowDashed:Z

    return-object p0
.end method

.method public allowDotted(Z)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowDotted:Z

    return-object p0
.end method

.method public bridge synthetic allowEmpty(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters$Builder;->allowEmpty(Z)Linet/ipaddr/MACAddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowEmpty(Z)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowEmpty(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/MACAddressStringParameters$Builder;

    return-object p1
.end method

.method public bridge synthetic allowSingleSegment(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters$Builder;->allowSingleSegment(Z)Linet/ipaddr/MACAddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowSingleSegment(Z)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowSingleSegment(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/MACAddressStringParameters$Builder;

    return-object p1
.end method

.method public allowSpaceDelimited(Z)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowSpaceDelimited:Z

    return-object p0
.end method

.method public allowWildcardedSeparator(Z)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/MACAddressStringParameters$Builder;->getFormatBuilder()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    return-object p0
.end method

.method public getFormatBuilder()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->formatBuilder:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;-><init>()V

    iput-object v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->formatBuilder:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->formatBuilder:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    iput-object p0, v0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->parent:Linet/ipaddr/MACAddressStringParameters$Builder;

    return-object v0
.end method

.method public setAllAddresses(Linet/ipaddr/MACAddressStringParameters$AddressSize;)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allAddresses:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    return-object p0
.end method

.method public setNetwork(Linet/ipaddr/mac/MACAddressNetwork;)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->network:Linet/ipaddr/mac/MACAddressNetwork;

    return-object p0
.end method

.method public setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/MACAddressStringParameters$Builder;->getFormatBuilder()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    return-object p0
.end method

.method public toParams()Linet/ipaddr/MACAddressStringParameters;
    .locals 13

    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->formatBuilder:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    if-nez v0, :cond_0

    sget-object v0, Linet/ipaddr/MACAddressStringParameters$Builder;->DEFAULT_FORMAT_OPTS:Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->toParams()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Linet/ipaddr/MACAddressStringParameters;

    iget-boolean v2, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowEmpty:Z

    iget-boolean v3, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowAll:Z

    iget-object v4, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allAddresses:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    iget-boolean v5, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowSingleSegment:Z

    iget-boolean v6, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowDashed:Z

    iget-boolean v7, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowSingleDashed:Z

    iget-boolean v8, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowColonDelimited:Z

    iget-boolean v9, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowDotted:Z

    iget-boolean v10, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->allowSpaceDelimited:Z

    iget-object v12, p0, Linet/ipaddr/MACAddressStringParameters$Builder;->network:Linet/ipaddr/mac/MACAddressNetwork;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Linet/ipaddr/MACAddressStringParameters;-><init>(ZZLinet/ipaddr/MACAddressStringParameters$AddressSize;ZZZZZZLinet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;Linet/ipaddr/mac/MACAddressNetwork;)V

    return-object v0
.end method

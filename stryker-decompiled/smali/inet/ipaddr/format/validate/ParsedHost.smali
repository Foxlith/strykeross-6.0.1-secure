.class public Linet/ipaddr/format/validate/ParsedHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;
    }
.end annotation


# static fields
.field private static final NO_EMBEDDED_ADDRESS:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

.field static final NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

.field host:Ljava/lang/String;

.field private final labelsQualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

.field private normalizedFlags:[Z

.field private normalizedLabels:[Ljava/lang/String;

.field private final originalStr:Ljava/lang/String;

.field private separatorIndices:[I

.field private service:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    invoke-direct {v0}, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;-><init>()V

    sput-object v0, Linet/ipaddr/format/validate/ParsedHost;->NO_EMBEDDED_ADDRESS:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    new-instance v0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-direct {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>()V

    sput-object v0, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linet/ipaddr/format/validate/IPAddressProvider;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    new-instance v5, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    invoke-direct {v5}, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;[I[ZLinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;)V

    iget-object p1, p0, Linet/ipaddr/format/validate/ParsedHost;->embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    iput-object p2, p1, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linet/ipaddr/format/validate/IPAddressProvider;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V
    .locals 6

    .line 2
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v5, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    invoke-direct {v5}, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;[I[ZLinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;)V

    iget-object p1, p0, Linet/ipaddr/format/validate/ParsedHost;->embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    iput-object p2, p1, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I[ZLinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V
    .locals 6

    .line 3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;[I[ZLinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I[ZLinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Linet/ipaddr/format/validate/ParsedHost;->labelsQualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    iput-object p3, p0, Linet/ipaddr/format/validate/ParsedHost;->normalizedFlags:[Z

    iput-object p2, p0, Linet/ipaddr/format/validate/ParsedHost;->separatorIndices:[I

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedHost;->originalStr:Ljava/lang/String;

    if-nez p5, :cond_0

    sget-object p5, Linet/ipaddr/format/validate/ParsedHost;->NO_EMBEDDED_ADDRESS:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    :cond_0
    iput-object p5, p0, Linet/ipaddr/format/validate/ParsedHost;->embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    return-void
.end method

.method private hasEmbeddedAddress()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    iget-object v0, v0, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mapString(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingAllAddresses()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingPrefixOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Linet/ipaddr/IPAddressNetwork;->getPrefixString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    iget-object p1, p0, Linet/ipaddr/format/validate/ParsedHost;->originalStr:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public asAddress()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedHost;->hasEmbeddedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedHost;->hasEmbeddedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public asGenericAddressString()Linet/ipaddr/IPAddressString;
    .locals 3

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedHost;->hasEmbeddedAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingAllAddresses()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Linet/ipaddr/IPAddressString;

    sget-object v2, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-object v1

    :cond_0
    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingPrefixOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Linet/ipaddr/IPAddressString;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Linet/ipaddr/IPAddressNetwork;->getPrefixString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-object v1

    :cond_1
    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Linet/ipaddr/IPAddressString;

    const-string v2, ""

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-object v1

    :cond_2
    :try_start_0
    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddress;->toAddressString()Linet/ipaddr/IPAddressString;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v1, Linet/ipaddr/IPAddressString;

    iget-object v2, p0, Linet/ipaddr/format/validate/ParsedHost;->originalStr:Ljava/lang/String;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    iget-object v0, v0, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    return-object v0
.end method

.method public getAddressStringException()Linet/ipaddr/AddressStringException;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    iget-object v0, v0, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressStringException:Linet/ipaddr/AddressStringException;

    return-object v0
.end method

.method public getEquivalentPrefixLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->labelsQualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->host:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->originalStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->host:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedHost;->hasEmbeddedAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v1

    invoke-interface {v1}, Linet/ipaddr/IPAddressSegmentSeries;->toCanonicalWildcardString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Linet/ipaddr/format/validate/ParsedHost;->host:Ljava/lang/String;
    :try_end_1
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/ParsedHost;->mapString(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->host:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedHost;->originalStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHost;->getNormalizedLabels()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->host:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :cond_3
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->originalStr:Ljava/lang/String;

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->host:Ljava/lang/String;

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getMask()Linet/ipaddr/IPAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->labelsQualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getMaskLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->labelsQualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedLabels()[Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->normalizedLabels:[Ljava/lang/String;

    if-nez v0, :cond_8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->normalizedLabels:[Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedHost;->hasEmbeddedAddress()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Linet/ipaddr/IPAddress;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSection;->getSegmentStrings()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Linet/ipaddr/format/validate/ParsedHost;->normalizedLabels:[Ljava/lang/String;
    :try_end_1
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    :cond_0
    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_3

    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/ParsedHost;->mapString(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    move-object v0, v2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->separatorIndices:[I

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, -0x1

    :goto_0
    if-ge v1, v0, :cond_6

    iget-object v5, p0, Linet/ipaddr/format/validate/ParsedHost;->separatorIndices:[I

    aget v5, v5, v1

    iget-object v6, p0, Linet/ipaddr/format/validate/ParsedHost;->normalizedFlags:[Z

    if-eqz v6, :cond_5

    aget-boolean v6, v6, v1

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    sub-int v7, v5, v4

    sub-int/2addr v7, v2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_4

    iget-object v7, p0, Linet/ipaddr/format/validate/ParsedHost;->originalStr:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_3

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Linet/ipaddr/format/validate/ParsedHost;->originalStr:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->separatorIndices:[I

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->normalizedFlags:[Z

    move-object v0, v3

    :goto_3
    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->normalizedLabels:[Ljava/lang/String;

    :cond_7
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_8
    :goto_5
    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->labelsQualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getPort()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->service:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedHost;->labelsQualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual {v1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getService()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->service:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public isAddressString()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIPv6Address()Z
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedHost;->hasEmbeddedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHost;->getAddressProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReverseDNS()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    iget-boolean v0, v0, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->isReverseDNS:Z

    return v0
.end method

.method public isUNCIPv6Literal()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHost;->embeddedAddress:Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    iget-boolean v0, v0, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->isUNCIPv6Literal:Z

    return v0
.end method

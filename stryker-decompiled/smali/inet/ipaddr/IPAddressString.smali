.class public Linet/ipaddr/IPAddressString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/HostIdentifierString;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linet/ipaddr/HostIdentifierString;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/IPAddressString;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

.field final fullAddr:Ljava/lang/String;

.field private validateException:Linet/ipaddr/AddressStringException;

.field final validationOptions:Linet/ipaddr/IPAddressStringParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {p0, p1, v0}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Linet/ipaddr/format/validate/IPAddressProvider;->NO_TYPE_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    iput-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iput-object p3, p0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    iput-object p1, p0, Linet/ipaddr/IPAddressString;->fullAddr:Ljava/lang/String;

    invoke-virtual {p2}, Linet/ipaddr/IPAddress;->getProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Linet/ipaddr/format/validate/IPAddressProvider;->NO_TYPE_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    iput-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    if-nez p1, :cond_0

    const-string p1, ""

    :goto_0
    iput-object p1, p0, Linet/ipaddr/IPAddressString;->fullAddr:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p2, p0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    return-void
.end method

.method private static addParts(Ljava/lang/String;Ljava/util/List;IIILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0, p4, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p3, p2, :cond_0

    invoke-virtual {p0, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkIPv4Exception()V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.address.is.ipv6"

    invoke-direct {v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->validateException:Linet/ipaddr/AddressStringException;

    if-nez v0, :cond_2

    return-void

    :cond_2
    throw v0
.end method

.method private checkIPv6Exception()V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.address.is.ipv4"

    invoke-direct {v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->validateException:Linet/ipaddr/AddressStringException;

    if-nez v0, :cond_2

    return-void

    :cond_2
    throw v0
.end method

.method public static countDelimitedAddresses(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Linet/ipaddr/IPAddressString;->isDelimitedBoundary(C)Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez v3, :cond_1

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    add-int/2addr v3, v1

    mul-int/2addr v4, v3

    :cond_3
    return v4
.end method

.method private static isDelimitedBoundary(C)Z
    .locals 1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isValidated(Linet/ipaddr/IPAddress$IPVersion;)Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isUninitialized()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_1

    iget-object p1, p0, Linet/ipaddr/IPAddressString;->validateException:Linet/ipaddr/AddressStringException;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Linet/ipaddr/IPAddressString;->checkIPv4Exception()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Linet/ipaddr/IPAddressString;->checkIPv6Exception()V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static iterator(Ljava/util/List;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/IPAddressString$2;

    invoke-direct {v0, p0}, Linet/ipaddr/IPAddressString$2;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseDelimitedSegments(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v7, v2

    move v4, v1

    move v5, v4

    move v6, v5

    move v9, v6

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x8

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Linet/ipaddr/IPAddressString;->isDelimitedBoundary(C)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    move-object v10, v2

    move-object v2, p0

    move-object v3, v10

    move v8, v1

    invoke-static/range {v2 .. v8}, Linet/ipaddr/IPAddressString;->addParts(Ljava/lang/String;Ljava/util/List;IIILjava/util/List;I)V

    move-object v7, v0

    move v5, v1

    move-object v2, v10

    :cond_1
    add-int/lit8 v3, v1, 0x1

    move v4, v3

    move v6, v4

    goto :goto_1

    :cond_2
    const/16 v8, 0x2c

    if-ne v3, v8, :cond_4

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    move v9, v6

    move v6, v3

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v9, :cond_8

    if-eqz v7, :cond_7

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_6
    move-object v0, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v2 .. v8}, Linet/ipaddr/IPAddressString;->addParts(Ljava/lang/String;Ljava/util/List;IIILjava/util/List;I)V

    move-object v2, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {v2}, Linet/ipaddr/IPAddressString;->iterator(Ljava/util/List;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance v0, Linet/ipaddr/IPAddressString$1;

    invoke-direct {v0, p0}, Linet/ipaddr/IPAddressString$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static toNormalizedString(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingAllAddresses()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingPrefixOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Linet/ipaddr/IPAddressNetwork;->getPrefixString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingIPAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object p0

    invoke-virtual {p0}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private validate(Linet/ipaddr/IPAddress$IPVersion;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressString;->isValidated(Linet/ipaddr/IPAddress$IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressString;->isValidated(Linet/ipaddr/IPAddress$IPVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getValidator()Linet/ipaddr/format/validate/HostIdentifierStringValidator;

    move-result-object p1

    invoke-interface {p1, p0}, Linet/ipaddr/format/validate/HostIdentifierStringValidator;->validateAddress(Linet/ipaddr/IPAddressString;)Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;
    :try_end_1
    .catch Linet/ipaddr/AddressStringException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    iput-object p1, p0, Linet/ipaddr/IPAddressString;->validateException:Linet/ipaddr/AddressStringException;

    sget-object v0, Linet/ipaddr/format/validate/IPAddressProvider;->INVALID_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    iput-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static validateNetworkPrefix(Linet/ipaddr/IPAddress$IPVersion;IZ)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x20

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    if-gt p1, p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-direct {p2, p1, p0}, Linet/ipaddr/PrefixLenException;-><init>(ILinet/ipaddr/IPAddress$IPVersion;)V

    throw p2
.end method

.method public static validateNetworkPrefixLength(Linet/ipaddr/IPAddress$IPVersion;Ljava/lang/CharSequence;)I
    .locals 2

    :try_start_0
    sget-object v0, Linet/ipaddr/format/validate/Validator;->VALIDATOR:Linet/ipaddr/format/validate/HostIdentifierStringValidator;

    invoke-interface {v0, p1, p0}, Linet/ipaddr/format/validate/HostIdentifierStringValidator;->validatePrefix(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p0
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Linet/ipaddr/PrefixLenException;

    invoke-direct {v1, p1, p0, v0}, Linet/ipaddr/PrefixLenException;-><init>(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressString;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isPrefixOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_0

    rem-int/lit8 p1, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, p1

    const/16 p1, 0x80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v0, -0x1

    rem-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    new-instance v0, Linet/ipaddr/IPAddressString;

    invoke-static {p1}, Linet/ipaddr/IPAddressNetwork;->getPrefixString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {v0, p1, v1}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    if-nez p1, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Linet/ipaddr/Address;->isMultiple()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Linet/ipaddr/Address;->isPrefixBlock()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Linet/ipaddr/IPAddressString;

    sget-object v0, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    iget-object v1, p0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {p1, v0, v1}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-object p1

    :cond_3
    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddress;->adjustPrefixBySegment(Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toAddressString()Linet/ipaddr/IPAddressString;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(I)Linet/ipaddr/IPAddressString;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isPrefixOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    if-lez p1, :cond_0

    const/16 p1, 0x80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    new-instance v0, Linet/ipaddr/IPAddressString;

    invoke-static {p1}, Linet/ipaddr/IPAddressNetwork;->getPrefixString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {v0, p1, v1}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isPrefixed()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p1

    if-gez v1, :cond_4

    invoke-virtual {v0}, Linet/ipaddr/Address;->isPrefixBlock()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Linet/ipaddr/IPAddressString;

    sget-object v0, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    iget-object v1, p0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {p1, v0, v1}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    return-object p1

    :cond_4
    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddress;->adjustPrefixLength(I)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toAddressString()Linet/ipaddr/IPAddressString;

    move-result-object p1

    return-object p1
.end method

.method public cacheAddress(Linet/ipaddr/IPAddress;)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->getProvider()Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    :cond_0
    return-void
.end method

.method public compareTo(Linet/ipaddr/IPAddressString;)I
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object v1, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0, v1}, Linet/ipaddr/format/validate/IPAddressProvider;->providerCompare(Linet/ipaddr/format/validate/IPAddressProvider;)I

    move-result p1
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/IPAddressString;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressString;->compareTo(Linet/ipaddr/IPAddressString;)I

    move-result p1

    return p1
.end method

.method public contains(Linet/ipaddr/IPAddressString;)Z
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object v1, p1, Linet/ipaddr/IPAddressString;->fullAddr:Ljava/lang/String;

    invoke-interface {v0, v1}, Linet/ipaddr/format/validate/IPAddressProvider;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object v1, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0, v1}, Linet/ipaddr/format/validate/IPAddressProvider;->contains(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddress;->contains(Linet/ipaddr/IPAddress;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public convertToPrefixLength()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_0
    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xa

    invoke-static {v0, v4}, Linet/ipaddr/IPAddressSegment;->toUnsignedStringLength(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v3}, Linet/ipaddr/IPAddressSegment;->toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/IPAddressString;

    if-eqz v1, :cond_4

    check-cast p1, Linet/ipaddr/IPAddressString;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    iget-object v3, p1, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object v2, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0, v2}, Linet/ipaddr/format/validate/IPAddressProvider;->parsedEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :try_start_0
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object p1, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0, p1}, Linet/ipaddr/format/validate/IPAddressProvider;->providerEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Z

    move-result p1
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1

    :cond_3
    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getAddress()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->toAddress()Linet/ipaddr/IPAddress;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressString;->toAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;

    move-result-object p1
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAddressStringException()Linet/ipaddr/AddressStringException;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v0

    :cond_0
    :goto_0
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->validateException:Linet/ipaddr/AddressStringException;

    return-object v0
.end method

.method public getDivisionGrouping()Linet/ipaddr/format/IPAddressDivisionSeries;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getDivisionGrouping()Linet/ipaddr/format/IPAddressDivisionSeries;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostAddress()Linet/ipaddr/IPAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->toHostAddress()Linet/ipaddr/IPAddress;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMask()Linet/ipaddr/IPAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSequentialRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderSeqRange()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidationOptions()Linet/ipaddr/IPAddressStringParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->validationOptions:Linet/ipaddr/IPAddressStringParameters;

    return-object v0
.end method

.method public getValidator()Linet/ipaddr/format/validate/HostIdentifierStringValidator;
    .locals 1

    sget-object v0, Linet/ipaddr/format/validate/Validator;->VALIDATOR:Linet/ipaddr/format/validate/HostIdentifierStringValidator;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->providerHashCode()I

    move-result v0
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAllAddresses()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingAllAddresses()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBase85IPv6()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingBase85IPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIPAddress()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingIPAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIPv4()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingIPv4()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIPv6()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

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

.method public isLoopback()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->isLoopback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMixedIPv6()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingMixedIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrefixOnly()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isProvidingPrefixOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrefixed()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSequential()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isSequential()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isUninitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->isInvalid()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/Address;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prefixContains(Linet/ipaddr/IPAddressString;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isPrefixOnly()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    iget-object v1, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v1}, Linet/ipaddr/format/validate/IPAddressProvider;->isUninitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object v2, p1, Linet/ipaddr/IPAddressString;->fullAddr:Ljava/lang/String;

    invoke-interface {v1, v2}, Linet/ipaddr/format/validate/IPAddressProvider;->prefixContains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object v3, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v1, v3}, Linet/ipaddr/format/validate/IPAddressProvider;->prefixContains(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    if-eqz p1, :cond_5

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Linet/ipaddr/Address;->getBitCount()I

    move-result v4

    if-gt v3, v4, :cond_4

    :cond_3
    invoke-virtual {v1, p1}, Linet/ipaddr/IPAddress;->prefixContains(Linet/ipaddr/IPAddress;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    :cond_5
    return v2
.end method

.method public prefixEquals(Linet/ipaddr/IPAddressString;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isPrefixOnly()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    iget-object v1, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v1}, Linet/ipaddr/format/validate/IPAddressProvider;->isUninitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object v2, p1, Linet/ipaddr/IPAddressString;->fullAddr:Ljava/lang/String;

    invoke-interface {v1, v2}, Linet/ipaddr/format/validate/IPAddressProvider;->prefixEquals(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    iget-object v3, p1, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v1, v3}, Linet/ipaddr/format/validate/IPAddressProvider;->prefixEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Linet/ipaddr/Address;->getBitCount()I

    move-result v4

    if-gt v3, v4, :cond_4

    :cond_3
    invoke-virtual {v1, p1}, Linet/ipaddr/Address;->prefixEquals(Linet/ipaddr/Address;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    :cond_5
    return v2
.end method

.method public bridge synthetic toAddress()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->toAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public toAddress()Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public toAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0, p1}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public toDivisionGrouping()Linet/ipaddr/format/IPAddressDivisionSeries;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getDivisionGrouping()Linet/ipaddr/format/IPAddressDivisionSeries;

    move-result-object v0

    return-object v0
.end method

.method public toHostAddress()Linet/ipaddr/IPAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderHostAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-static {v0}, Linet/ipaddr/IPAddressString;->toNormalizedString(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSequentialRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressString;->validate()V

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/IPAddressProvider;->getProviderSeqRange()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressString;->fullAddr:Ljava/lang/String;

    return-object v0
.end method

.method public validate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddressString;->validate(Linet/ipaddr/IPAddress$IPVersion;)V

    return-void
.end method

.method public validateIPv4()V
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddressString;->validate(Linet/ipaddr/IPAddress$IPVersion;)V

    invoke-direct {p0}, Linet/ipaddr/IPAddressString;->checkIPv4Exception()V

    return-void
.end method

.method public validateIPv6()V
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddressString;->validate(Linet/ipaddr/IPAddress$IPVersion;)V

    invoke-direct {p0}, Linet/ipaddr/IPAddressString;->checkIPv6Exception()V

    return-void
.end method

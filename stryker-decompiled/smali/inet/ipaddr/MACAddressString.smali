.class public Linet/ipaddr/MACAddressString;
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
        "Linet/ipaddr/MACAddressString;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_ADDRESSES:Linet/ipaddr/MACAddressString;

.field private static final DEFAULT_BASIC_VALIDATION_OPTIONS:Linet/ipaddr/MACAddressStringParameters;

.field public static final EMPTY_ADDRESS:Linet/ipaddr/MACAddressString;

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private cachedException:Linet/ipaddr/AddressStringException;

.field final fullAddr:Ljava/lang/String;

.field private isValid:Ljava/lang/Boolean;

.field private parsedAddress:Linet/ipaddr/format/validate/MACAddressProvider;

.field final validationOptions:Linet/ipaddr/MACAddressStringParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/MACAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/MACAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/MACAddressStringParameters$Builder;->toParams()Linet/ipaddr/MACAddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/MACAddressString;->DEFAULT_BASIC_VALIDATION_OPTIONS:Linet/ipaddr/MACAddressStringParameters;

    new-instance v0, Linet/ipaddr/MACAddressString;

    const-string v1, ""

    invoke-direct {v0, v1}, Linet/ipaddr/MACAddressString;-><init>(Ljava/lang/String;)V

    sput-object v0, Linet/ipaddr/MACAddressString;->EMPTY_ADDRESS:Linet/ipaddr/MACAddressString;

    new-instance v0, Linet/ipaddr/MACAddressString;

    sget-object v1, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    invoke-direct {v0, v1}, Linet/ipaddr/MACAddressString;-><init>(Ljava/lang/String;)V

    sput-object v0, Linet/ipaddr/MACAddressString;->ALL_ADDRESSES:Linet/ipaddr/MACAddressString;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/mac/MACAddress;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/MACAddressString;->validationOptions:Linet/ipaddr/MACAddressStringParameters;

    invoke-virtual {p1}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/MACAddressString;->fullAddr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressString;->initByAddress(Linet/ipaddr/mac/MACAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Linet/ipaddr/MACAddressString;->DEFAULT_BASIC_VALIDATION_OPTIONS:Linet/ipaddr/MACAddressStringParameters;

    invoke-direct {p0, p1, v0}, Linet/ipaddr/MACAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/MACAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linet/ipaddr/MACAddressStringParameters;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :goto_0
    iput-object p1, p0, Linet/ipaddr/MACAddressString;->fullAddr:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p2, p0, Linet/ipaddr/MACAddressString;->validationOptions:Linet/ipaddr/MACAddressStringParameters;

    return-void
.end method

.method public static countDelimitedAddresses(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressString;->countDelimitedAddresses(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isValidated()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/MACAddressString;->isValid:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/MACAddressString;->cachedException:Linet/ipaddr/AddressStringException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static parseDelimitedSegments(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0
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

    invoke-static {p0}, Linet/ipaddr/IPAddressString;->parseDelimitedSegments(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cacheAddress(Linet/ipaddr/mac/MACAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressString;->initByAddress(Linet/ipaddr/mac/MACAddress;)V

    return-void
.end method

.method public compareTo(Linet/ipaddr/MACAddressString;)I
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Linet/ipaddr/format/AddressItem;->compareTo(Linet/ipaddr/format/AddressItem;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/MACAddressString;

    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressString;->compareTo(Linet/ipaddr/MACAddressString;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/MACAddressString;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Linet/ipaddr/MACAddressString;

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Linet/ipaddr/MACAddressString;->validationOptions:Linet/ipaddr/MACAddressStringParameters;

    iget-object v4, p1, Linet/ipaddr/MACAddressString;->validationOptions:Linet/ipaddr/MACAddressStringParameters;

    if-ne v3, v4, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v2

    :cond_3
    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method public bridge synthetic getAddress()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/MACAddressString;->parsedAddress:Linet/ipaddr/format/validate/MACAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/MACAddressProvider;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidationOptions()Linet/ipaddr/MACAddressStringParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/MACAddressString;->validationOptions:Linet/ipaddr/MACAddressStringParameters;

    return-object v0
.end method

.method public getValidator()Linet/ipaddr/format/validate/HostIdentifierStringValidator;
    .locals 1

    sget-object v0, Linet/ipaddr/format/validate/Validator;->VALIDATOR:Linet/ipaddr/format/validate/HostIdentifierStringValidator;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public initByAddress(Linet/ipaddr/mac/MACAddress;)V
    .locals 1

    new-instance v0, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;

    invoke-direct {v0, p1}, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;-><init>(Linet/ipaddr/mac/MACAddress;)V

    iput-object v0, p0, Linet/ipaddr/MACAddressString;->parsedAddress:Linet/ipaddr/format/validate/MACAddressProvider;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Linet/ipaddr/MACAddressString;->isValid:Ljava/lang/Boolean;

    return-void
.end method

.method public isAllAddresses()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddress;->isAllAddresses()Z

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
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/MACAddressString;->parsedAddress:Linet/ipaddr/format/validate/MACAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/MACAddressProvider;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public isPrefixed()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/Address;->isPrefixed()Z

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
    .locals 1

    iget-object v0, p0, Linet/ipaddr/MACAddressString;->isValid:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->validate()V
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

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

.method public bridge synthetic toAddress()Linet/ipaddr/Address;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->toAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public toAddress()Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->validate()V

    iget-object v0, p0, Linet/ipaddr/MACAddressString;->parsedAddress:Linet/ipaddr/format/validate/MACAddressProvider;

    invoke-interface {v0}, Linet/ipaddr/format/validate/MACAddressProvider;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/MACAddressString;->fullAddr:Ljava/lang/String;

    return-object v0
.end method

.method public validate()V
    .locals 2

    invoke-direct {p0}, Linet/ipaddr/MACAddressString;->isValidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Linet/ipaddr/MACAddressString;->isValidated()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Linet/ipaddr/MACAddressString;->getValidator()Linet/ipaddr/format/validate/HostIdentifierStringValidator;

    move-result-object v0

    invoke-interface {v0, p0}, Linet/ipaddr/format/validate/HostIdentifierStringValidator;->validateAddress(Linet/ipaddr/MACAddressString;)Linet/ipaddr/format/validate/MACAddressProvider;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/MACAddressString;->parsedAddress:Linet/ipaddr/format/validate/MACAddressProvider;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Linet/ipaddr/MACAddressString;->isValid:Ljava/lang/Boolean;
    :try_end_1
    .catch Linet/ipaddr/AddressStringException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Linet/ipaddr/MACAddressString;->cachedException:Linet/ipaddr/AddressStringException;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Linet/ipaddr/MACAddressString;->isValid:Ljava/lang/Boolean;

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

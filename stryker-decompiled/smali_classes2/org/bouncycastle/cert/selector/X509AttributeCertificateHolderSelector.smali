.class public Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private final attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

.field private final attributeCertificateValid:Ljava/util/Date;

.field private final holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

.field private final issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

.field private final serialNumber:Ljava/math/BigInteger;

.field private final targetGroups:Ljava/util/Collection;

.field private final targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/AttributeCertificateHolder;Lorg/bouncycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    iput-object p2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    iput-object p3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    iput-object p5, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    iput-object p6, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    iput-object p7, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 9

    new-instance v8, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;

    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    iget-object v5, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    iget-object v6, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    iget-object v7, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;-><init>(Lorg/bouncycastle/cert/AttributeCertificateHolder;Lorg/bouncycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v8
.end method

.method public getAttributeCert()Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHolder()Lorg/bouncycastle/cert/AttributeCertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/cert/AttributeCertificateIssuer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getHolder()Lorg/bouncycastle/cert/AttributeCertificateHolder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getIssuer()Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_6
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_e

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TargetInformation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lorg/bouncycastle/asn1/x509/Targets;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    move v3, v0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_9

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Target;->getTargetName()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-nez v3, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    move v3, v0

    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_d

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lorg/bouncycastle/asn1/x509/Target;

    move-result-object v4

    move v5, v1

    :goto_4
    array-length v6, v4

    if-ge v5, v6, :cond_c

    iget-object v6, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Target;->getTargetGroup()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v3, v2

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    if-nez v3, :cond_e

    :catch_0
    return v1

    :cond_e
    return v2
.end method

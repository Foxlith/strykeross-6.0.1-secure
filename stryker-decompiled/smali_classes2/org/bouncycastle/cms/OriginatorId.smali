.class Lorg/bouncycastle/cms/OriginatorId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private serialNumber:Ljava/math/BigInteger;

.field private subjectKeyId:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/OriginatorId;->setIssuerAndSerial(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/OriginatorId;->setIssuerAndSerial(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/cms/OriginatorId;->setSubjectKeyID([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/OriginatorId;->setSubjectKeyID([B)V

    return-void
.end method

.method private equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setIssuerAndSerial(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p2, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    return-void
.end method

.method private setSubjectKeyID([B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/bouncycastle/cms/OriginatorId;

    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/cms/OriginatorId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/cms/OriginatorId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cms/OriginatorId;

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    iget-object v2, p1, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/cms/OriginatorId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object p1, p1, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/cms/OriginatorId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorId;->subjectKeyId:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->serialNumber:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorId;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.class public Lorg/bouncycastle/asn1/cmp/OOBCertHash;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private certId:Lorg/bouncycastle/asn1/crmf/CertId;

.field private hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private hashVal:Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_0
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/crmf/CertId;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/CertId;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/crmf/CertId;[B)V
    .locals 1

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/cmp/OOBCertHash;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/DERBitString;)V

    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/OOBCertHash;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/OOBCertHash;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCertId()Lorg/bouncycastle/asn1/crmf/CertId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    return-object v0
.end method

.method public getHashAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getHashVal()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.class public Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;
.source "SourceFile"


# instance fields
.field private encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/cms/RecipientId;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5, p6}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    iput-object p2, p0, Lorg/bouncycastle/cms/RecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    iput-object p3, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method private getPublicKeyInfoFromOriginatorId(Lorg/bouncycastle/cms/OriginatorId;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "No support for \'originator\' as IssuerAndSerialNumber or SubjectKeyIdentifier"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getPublicKeyInfoFromOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getPublicKey()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method private getSenderPublicKeyInfo(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getOriginatorKey()Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyInfoFromOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lorg/bouncycastle/cms/OriginatorId;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/OriginatorId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/OriginatorId;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/OriginatorId;-><init>([B)V

    :goto_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyInfoFromOriginatorId(Lorg/bouncycastle/cms/OriginatorId;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    return-object p1
.end method

.method public static readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 12

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getRecipientEncryptedKeys()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getIdentifier()Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Lorg/bouncycastle/cms/KeyAgreeRecipientId;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/bouncycastle/cms/KeyAgreeRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    move-object v7, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getRKeyID()Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/cms/KeyAgreeRecipientId;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/bouncycastle/cms/KeyAgreeRecipientId;-><init>([B)V

    move-object v7, v4

    :goto_1
    new-instance v3, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    move-object v5, v3

    move-object v6, p1

    move-object v9, p2

    move-object v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/cms/RecipientId;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    move-object v2, p0

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 6

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KeyAgreeRecipient;

    invoke-interface {v0}, Lorg/bouncycastle/cms/KeyAgreeRecipient;->getPrivateKeyAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getSenderPublicKeyInfo(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    iget-object p1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getUserKeyingMaterial()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    iget-object p1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/cms/KeyAgreeRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object p1

    return-object p1
.end method

.method public getUserKeyingMaterial()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getUserKeyingMaterial()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

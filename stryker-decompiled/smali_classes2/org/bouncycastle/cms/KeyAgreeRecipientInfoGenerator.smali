.class public abstract Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private keyAgreementOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keyEncryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private originatorKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->originatorKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object p1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyAgreementOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method


# virtual methods
.method public createOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    iget-object v1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->originatorKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->createOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->isDES(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMSRC2wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyAgreementOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/cryptopro/Gost2814789KeyWrapParameters;

    sget-object v4, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_A_ParamSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789KeyWrapParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->keyAgreementOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0, v2, v1, p1}, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->generateRecipientEncryptedKeys(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->getUserKeyingMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v3, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v4, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v0, v5, v2, p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;)V

    return-object v3

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v3, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2, p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;)V

    return-object v1
.end method

.method public abstract generateRecipientEncryptedKeys(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/ASN1Sequence;
.end method

.method public abstract getUserKeyingMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B
.end method

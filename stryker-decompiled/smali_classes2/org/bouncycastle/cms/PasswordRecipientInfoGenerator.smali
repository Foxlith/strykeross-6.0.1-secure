.class public abstract Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private blockSize:I

.field private iterationCount:I

.field private kekAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keyDerivationAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private keySize:I

.field protected password:[C

.field private prf:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

.field private random:Ljava/security/SecureRandom;

.field private salt:[B

.field private schemeID:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[C)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/cms/PasswordRecipientInformation;->BLOCKSIZES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[CII)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[CII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->password:[C

    const/4 p2, 0x1

    iput p2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->schemeID:I

    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->kekAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput p3, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keySize:I

    iput p4, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->blockSize:I

    sget-object p1, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA1:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->prf:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    const/16 p1, 0x400

    iput p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->iterationCount:I

    return-void
.end method

.method private static getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .locals 2

    .line 1
    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->KEYSIZES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "cannot find key size for algorithm: "

    .line 19
    .line 20
    invoke-static {v1, p0}, Ll1/e;->i(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method


# virtual methods
.method public abstract calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B
.end method

.method public generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 7

    iget v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->blockSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    if-nez v1, :cond_1

    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    iget-object v2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    iget-object v4, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    iget v5, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->iterationCount:I

    iget-object v6, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->prf:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    iget-object v6, v6, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->prfAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keyDerivationAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget v2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->schemeID:I

    iget v3, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keySize:I

    invoke-virtual {p0, v2, v1, v3}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->kekAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0, v2, v1, p1}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->generateEncryptedBytes(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/operator/GenericKey;)[B

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->kekAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_PWRI_KEK:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v2, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    iget-object v3, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keyDerivationAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v3, v0, v1}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {p1, v2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;)V

    return-object p1
.end method

.method public abstract generateEncryptedBytes(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/operator/GenericKey;)[B
.end method

.method public setPRF(Lorg/bouncycastle/cms/PasswordRecipient$PRF;)Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->prf:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    return-object p0
.end method

.method public setPasswordConversionScheme(I)Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->schemeID:I

    return-object p0
.end method

.method public setSaltAndIterationCount([BI)Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    iput p2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->iterationCount:I

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

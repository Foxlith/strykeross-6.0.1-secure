.class public Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;


# instance fields
.field private helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

.field private provider:Ljava/security/Provider;

.field private providerName:Ljava/lang/String;

.field private recipientKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->provider:Ljava/security/Provider;

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->providerName:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->recipientKey:Ljava/security/PrivateKey;

    return-void
.end method

.method private extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->recipientKey:Ljava/security/PrivateKey;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)V

    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->provider:Ljava/security/Provider;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->providerName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    :cond_1
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2, p3}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "key invalid in message: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getValueDecryptor(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/InputDecryptor;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator$1;-><init>(Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    return-object p3
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->provider:Ljava/security/Provider;

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->provider:Ljava/security/Provider;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->providerName:Ljava/lang/String;

    return-object p0
.end method

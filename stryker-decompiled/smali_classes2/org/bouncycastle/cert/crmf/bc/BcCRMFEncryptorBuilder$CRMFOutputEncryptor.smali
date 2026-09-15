.class Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CRMFOutputEncryptor"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Ljava/lang/Object;

.field private encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

.field final synthetic this$0:Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->this$0:Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p3

    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->access$000(Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;)Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;->createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object p4

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p4}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object p4

    invoke-direct {v0, p4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->access$000(Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;)Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;

    move-result-object p4

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p4, p2, v0, p3}, Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;->generateEncryptionAlgID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/params/KeyParameter;Ljava/security/SecureRandom;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->access$000(Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;)Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;

    iget-object p1, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object p2, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 p3, 0x1

    invoke-static {p3, p1, p2}, Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;->createContentCipher(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->cipher:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;->cipher:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/util/CipherFactory;->createOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;)Lorg/bouncycastle/crypto/io/CipherOutputStream;

    move-result-object p1

    return-object p1
.end method

.class Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/InputDecryptorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->build([C)Lorg/bouncycastle/operator/InputDecryptorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

.field final synthetic val$password:[C


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;[C)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    iput-object p2, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->val$password:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputDecryptor;
    .locals 11

    const-string v0, " not available: "

    const-string v1, "Unknown algorithm: "

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/openssl/jcajce/PEMUtilities;->isPKCS5Scheme2(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/openssl/jcajce/PEMUtilities;->isHmacSHA1(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-static {v2}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v2

    iget-object v5, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->val$password:[C

    invoke-static {v2, v4, v5, v8, v9}, Lorg/bouncycastle/openssl/jcajce/PEMUtilities;->generateSecretKeyForPKCS5Scheme2(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_4

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-static {v5}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v5

    iget-object v7, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->val$password:[C

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    move-object v6, v4

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/openssl/jcajce/PEMUtilities;->generateSecretKeyForPKCS5Scheme2(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Ljava/lang/String;[C[BILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/SecretKey;

    move-result-object v2

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-static {v5}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-static {v6}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    invoke-virtual {v5, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/openssl/jcajce/PEMUtilities;->isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-static {v2}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v2, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;

    iget-object v4, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->val$password:[C

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v2, v4, v6, v1}, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;-><init>([C[BI)V

    :goto_1
    invoke-virtual {v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/openssl/jcajce/PEMUtilities;->isPKCS5Scheme1(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/PBEParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBEParameter;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-static {v2}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v2, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;

    iget-object v4, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;->val$password:[C

    new-instance v6, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1$1;

    invoke-direct {v6, p0}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1$1;-><init>(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBEParameter;->getSalt()[B

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBEParameter;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v2, v4, v6, v7, v1}, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;-><init>([CLorg/bouncycastle/crypto/CharToByteConverter;[BI)V

    goto :goto_1

    :goto_2
    new-instance v1, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1$2;

    invoke-direct {v1, p0, p1, v5}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1$2;-><init>(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder$1;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    return-object v1

    :cond_3
    new-instance v2, Lorg/bouncycastle/openssl/PEMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_4
    new-instance v2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

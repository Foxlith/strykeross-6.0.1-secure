.class Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMSOutputEncryptor"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Ljavax/crypto/Cipher;

.field private encKey:Ljavax/crypto/SecretKey;

.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    invoke-static {p5}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p5

    if-gez p3, :cond_0

    invoke-virtual {v0, p5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3, p5}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    if-nez p4, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p3

    iget-object p4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p3, p2, p4, p5}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->generateParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;

    move-result-object p4

    :cond_1
    :try_start_0
    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p4

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "unable to initialize cipher: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

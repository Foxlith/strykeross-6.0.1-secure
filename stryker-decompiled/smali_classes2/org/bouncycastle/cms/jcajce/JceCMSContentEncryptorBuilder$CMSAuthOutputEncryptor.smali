.class Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/OutputAEADEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMSAuthOutputEncryptor"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Ljavax/crypto/Cipher;

.field private encKey:Ljavax/crypto/SecretKey;

.field private macOut:Lorg/bouncycastle/operator/MacCaptureStream;

.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

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

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    if-nez p4, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p3

    iget-object p4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p3, p2, p4, p5}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->generateParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;

    move-result-object p4

    :cond_1
    :try_start_0
    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p4

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

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
.method public getAADStream()Ljava/io/OutputStream;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceAADStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/JceAADStream;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    return-object v0
.end method

.method public getMAC()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->macOut:Lorg/bouncycastle/operator/MacCaptureStream;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/MacCaptureStream;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/operator/MacCaptureStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v0

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/operator/MacCaptureStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->macOut:Lorg/bouncycastle/operator/MacCaptureStream;

    new-instance p1, Lorg/bouncycastle/jcajce/io/CipherOutputStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->macOut:Lorg/bouncycastle/operator/MacCaptureStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

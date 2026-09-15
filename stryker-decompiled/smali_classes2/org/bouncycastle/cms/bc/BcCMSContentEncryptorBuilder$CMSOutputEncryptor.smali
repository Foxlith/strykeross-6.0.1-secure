.class Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMSOutputEncryptor"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected cipher:Ljava/lang/Object;

.field private encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

.field final synthetic this$0:Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->this$0:Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_0

    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object p3

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-static {p1}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->generateEncryptionAlgID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/params/KeyParameter;Ljava/security/SecureRandom;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 p2, 0x1

    iget-object p3, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-static {p2, p3, p1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createContentCipher(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/util/CipherFactory;->createOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;)Lorg/bouncycastle/crypto/io/CipherOutputStream;

    move-result-object p1

    return-object p1
.end method

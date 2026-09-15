.class Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CRMFOutputEncryptor"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Ljavax/crypto/Cipher;

.field private encKey:Ljavax/crypto/SecretKey;

.field final synthetic this$0:Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->this$0:Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;->access$000(Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;)Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p2}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyGenerator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    new-instance p4, Ljava/security/SecureRandom;

    .line 17
    .line 18
    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-gez p3, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;->access$100()Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-interface {p3, p2}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    :cond_1
    if-gez p3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, p4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0, p3, p4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;->access$000(Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;)Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3, p2}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    .line 55
    .line 56
    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;->access$000(Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;)Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    .line 61
    .line 62
    invoke-virtual {p3, p2, v0, p4}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->generateParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    .line 67
    .line 68
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v2, v1, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    if-nez p3, :cond_3

    .line 75
    .line 76
    iget-object p3, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;->access$000(Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder;)Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 91
    .line 92
    return-void

    .line 93
    :catch_0
    move-exception p1

    .line 94
    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    .line 95
    .line 96
    new-instance p3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p4, "unable to initialize cipher: "

    .line 99
    .line 100
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw p2
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceCRMFEncryptorBuilder$CRMFOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

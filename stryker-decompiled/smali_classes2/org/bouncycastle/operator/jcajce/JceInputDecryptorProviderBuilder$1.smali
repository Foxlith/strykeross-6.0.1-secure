.class Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/InputDecryptorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;->build([B)Lorg/bouncycastle/operator/InputDecryptorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;

.field final synthetic val$encKeyBytes:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->val$encKeyBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;)Ljavax/crypto/Cipher;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputDecryptor;
    .locals 5

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;->access$000(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 22
    .line 23
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->val$encKeyBytes:[B

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 44
    .line 45
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 46
    .line 47
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 69
    .line 70
    new-instance v3, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;

    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getIV()[B

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v3, v4, p1}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_1
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1$1;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1$1;-><init>(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :goto_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "unable to create InputDecryptor: "

    .line 95
    .line 96
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

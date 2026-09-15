.class public Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private iterationCount:I

.field private random:Ljava/security/SecureRandom;

.field private saltLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->iterationCount:I

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->iterationCount:I

    return p0
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->random:Ljava/security/SecureRandom;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->random:Ljava/security/SecureRandom;

    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->saltLength:I

    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->random:Ljava/security/SecureRandom;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 38
    .line 39
    iget v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->iterationCount:I

    .line 40
    .line 41
    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lorg/bouncycastle/jcajce/PKCS12Key;

    .line 45
    .line 46
    invoke-direct {v3, p1}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([C)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;

    .line 53
    .line 54
    invoke-direct {p1, p0, v1, v0, v3}, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder$1;-><init>(Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;[BLjavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "unable to create MAC calculator: "

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public setIterationCount(I)Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->iterationCount:I

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCS12MacCalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

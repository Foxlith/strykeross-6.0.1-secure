.class public Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
.source "SourceFile"


# instance fields
.field private helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[C)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[C)V

    new-instance p1, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance p2, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {p2}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-void
.end method


# virtual methods
.method public calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->password:[C

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->calculateDerivedKey(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B

    move-result-object p1

    return-object p1
.end method

.method public generateEncryptedBytes(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/operator/GenericKey;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createRFC3211Wrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {p1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x3

    .line 44
    invoke-virtual {v0, p2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 54
    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "cannot process content encryption key: "

    .line 58
    .line 59
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    .line 68
    .line 69
    throw p2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

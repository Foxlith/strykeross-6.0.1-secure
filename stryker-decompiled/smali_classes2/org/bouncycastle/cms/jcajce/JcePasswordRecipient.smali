.class public abstract Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/PasswordRecipient;


# instance fields
.field protected helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field private password:[C

.field private schemeID:I


# direct methods
.method public constructor <init>([C)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->schemeID:I

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->password:[C

    return-void
.end method


# virtual methods
.method public calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->password:[C

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->calculateDerivedKey(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B

    move-result-object p1

    return-object p1
.end method

.method public extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Ljava/security/Key;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createRFC3211Wrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {p1, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p3, 0x4

    .line 38
    invoke-virtual {v0, p3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x3

    .line 50
    invoke-virtual {v0, p4, p1, p2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 57
    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p4, "cannot process content encryption key: "

    .line 61
    .line 62
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->password:[C

    return-object v0
.end method

.method public getPasswordConversionScheme()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->schemeID:I

    return v0
.end method

.method public setPasswordConversionScheme(I)Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->schemeID:I

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

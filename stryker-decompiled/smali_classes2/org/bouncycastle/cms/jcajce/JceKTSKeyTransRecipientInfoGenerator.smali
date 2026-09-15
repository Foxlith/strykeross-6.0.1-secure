.class public Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;
.source "SourceFile"


# static fields
.field private static final ANONYMOUS_SENDER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0c14416e6f6e796d6f75732053656e64657220202020"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->ANONYMOUS_SENDER:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;-><init>(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Ljava/lang/String;I)V
    .locals 7

    .line 2
    new-instance v6, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    sget-object v4, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->ANONYMOUS_SENDER:[B

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->getEncodedRecipID(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)[B

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;I[B[B)V

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 2

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>([BLjava/security/PublicKey;Ljava/lang/String;I)V
    .locals 7

    .line 4
    new-instance v6, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    sget-object v4, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->ANONYMOUS_SENDER:[B

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->getEncodedSubKeyId([B)[B

    move-result-object v5

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I[B[B)V

    invoke-direct {p0, p1, v6}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>([BLorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .locals 1

    .line 5
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>([BLorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method private static getEncodedRecipID(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)[B
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "DER"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Cannot process extracted IssuerAndSerialNumber: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method private static getEncodedSubKeyId([B)[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$2;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Cannot process subject key identifier: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$2;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method


# virtual methods
.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    return-object p0
.end method

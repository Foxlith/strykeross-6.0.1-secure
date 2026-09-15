.class public Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
.super Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;
.source "SourceFile"


# instance fields
.field helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;-><init>(Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;)V

    new-instance p1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->getPublicKeyAndChallenge()Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "error encoding public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;

    iget-object v1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    new-instance v2, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v2, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;-><init>(Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
    .locals 3

    .line 2
    new-instance v0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;

    iget-object v1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    new-instance v2, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v2, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;-><init>(Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

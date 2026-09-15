.class Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;
.super Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;->providerName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    move-result-object p1

    return-object p1
.end method

.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;
    .locals 1

    .line 2
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;->providerName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;

    move-result-object p1

    return-object p1
.end method

.method public createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;->providerName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;

    move-result-object p1

    return-object p1
.end method

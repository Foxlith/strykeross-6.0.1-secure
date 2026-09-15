.class public Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/cms/KeyTransRecipientId;)V
    .locals 0

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;->getPartyVInfoFromRID(Lorg/bouncycastle/cms/KeyTransRecipientId;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;-><init>(Ljava/security/PrivateKey;[B)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;

    move-result-object p3

    new-instance v0, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;Ljavax/crypto/Mac;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/MacCalculator;)V

    return-object v0
.end method

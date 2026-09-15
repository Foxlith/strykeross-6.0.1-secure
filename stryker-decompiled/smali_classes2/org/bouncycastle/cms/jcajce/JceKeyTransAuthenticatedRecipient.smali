.class public Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthenticatedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;

    move-result-object p3

    new-instance v0, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthenticatedRecipient$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthenticatedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthenticatedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;Ljavax/crypto/Mac;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/MacCalculator;)V

    return-object v0
.end method

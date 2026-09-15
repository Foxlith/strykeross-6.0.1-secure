.class public Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthenticatedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;

    move-result-object p3

    new-instance p4, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance p5, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthenticatedRecipient$1;

    invoke-direct {p5, p0, p2, p1, p3}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthenticatedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthenticatedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;Ljavax/crypto/Mac;)V

    invoke-direct {p4, p5}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/MacCalculator;)V

    return-object p4
.end method

.class public Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {p3, v0}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object p3
.end method

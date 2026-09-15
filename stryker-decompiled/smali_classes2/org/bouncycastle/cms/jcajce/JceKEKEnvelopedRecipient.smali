.class public Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {p3, v0}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object p3
.end method

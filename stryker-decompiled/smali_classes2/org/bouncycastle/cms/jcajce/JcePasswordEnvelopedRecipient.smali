.class public Lorg/bouncycastle/cms/jcajce/JcePasswordEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;
.source "SourceFile"


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;-><init>([C)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance p4, Lorg/bouncycastle/cms/jcajce/JcePasswordEnvelopedRecipient$1;

    invoke-direct {p4, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/JcePasswordEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JcePasswordEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {p3, p4}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object p3
.end method

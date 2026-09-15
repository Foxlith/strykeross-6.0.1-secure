.class public Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient;
.super Lorg/bouncycastle/cms/bc/BcPasswordRecipient;
.source "SourceFile"


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/bc/BcPasswordRecipient;-><init>([C)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/bc/BcPasswordRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createContentCipher(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance p4, Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient$1;

    invoke-direct {p4, p0, p2, p1}, Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V

    invoke-direct {p3, p4}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object p3
.end method

.class Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/InputAEADDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;

.field final synthetic val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$dataCipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->this$0:Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAADStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getMAC()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

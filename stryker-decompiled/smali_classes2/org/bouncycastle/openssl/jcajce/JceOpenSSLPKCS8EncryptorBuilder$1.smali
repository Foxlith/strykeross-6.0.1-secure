.class Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;->build()Lorg/bouncycastle/operator/OutputEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

.field final synthetic val$algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

    iput-object p2, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;->val$algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;->val$algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    iget-object v1, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;->val$algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

    invoke-static {v2}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;->access$100(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

    invoke-static {v1}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;->access$000(Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

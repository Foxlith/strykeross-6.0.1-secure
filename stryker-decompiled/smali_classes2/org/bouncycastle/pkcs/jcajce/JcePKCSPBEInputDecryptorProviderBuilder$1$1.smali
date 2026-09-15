.class Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/InputDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1$1;->this$1:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1$1;->this$1:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;

    invoke-static {v0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->access$400(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1$1;->this$1:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;

    invoke-static {v1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->access$500(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

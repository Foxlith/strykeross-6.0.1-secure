.class public Lorg/bouncycastle/pkcs/jcajce/JcaPKCS8EncryptedPrivateKeyInfoBuilder;
.super Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-void
.end method

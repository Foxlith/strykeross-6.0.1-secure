.class public Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private digest:Lorg/bouncycastle/crypto/ExtendedDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;-><init>(Lorg/bouncycastle/crypto/ExtendedDigest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/ExtendedDigest;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;->digest:Lorg/bouncycastle/crypto/ExtendedDigest;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/crypto/ExtendedDigest;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;->digest:Lorg/bouncycastle/crypto/ExtendedDigest;

    return-object p0
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/InputDecryptorProvider;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder$1;-><init>(Lorg/bouncycastle/pkcs/bc/BcPKCS12PBEInputDecryptorProviderBuilder;[C)V

    return-object v0
.end method

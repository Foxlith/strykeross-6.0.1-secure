.class public Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyUnwrapper;
.super Lorg/bouncycastle/operator/bc/BcAsymmetricKeyUnwrapper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-void
.end method


# virtual methods
.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    new-instance p1, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v0, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-object p1
.end method

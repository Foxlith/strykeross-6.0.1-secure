.class public Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder$SignatureOutputStream;
    }
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/eac/operator/jcajce/EACHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/eac/operator/jcajce/DefaultEACHelper;

    invoke-direct {v0}, Lorg/bouncycastle/eac/operator/jcajce/DefaultEACHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;->helper:Lorg/bouncycastle/eac/operator/jcajce/EACHelper;

    return-void
.end method

.method public static synthetic access$000([B)[B
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;->derEncode([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static derEncode([B)[B
    .locals 5

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v0, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/PublicKey;)Lorg/bouncycastle/eac/operator/EACSignatureVerifier;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;->helper:Lorg/bouncycastle/eac/operator/jcajce/EACHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/eac/operator/jcajce/EACHelper;->getSignature(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder$SignatureOutputStream;

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder$SignatureOutputStream;-><init>(Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;Ljava/security/Signature;)V

    new-instance v0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder$1;-><init>(Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder$SignatureOutputStream;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to find provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to find algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/eac/operator/jcajce/NamedEACHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/eac/operator/jcajce/NamedEACHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;->helper:Lorg/bouncycastle/eac/operator/jcajce/EACHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/eac/operator/jcajce/ProviderEACHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/eac/operator/jcajce/ProviderEACHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignatureVerifierBuilder;->helper:Lorg/bouncycastle/eac/operator/jcajce/EACHelper;

    return-object p0
.end method

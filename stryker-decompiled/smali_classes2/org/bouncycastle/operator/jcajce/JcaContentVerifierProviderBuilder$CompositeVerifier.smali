.class Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompositeVerifier"
.end annotation


# instance fields
.field private sigs:[Ljava/security/Signature;

.field private stream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;[Ljava/security/Signature;)V
    .locals 3

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->sigs:[Ljava/security/Signature;

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-object v0, p2, p1

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p2

    if-eq p1, v0, :cond_3

    aget-object v0, p2, p1

    invoke-static {v0}, Lorg/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->stream:Ljava/io/OutputStream;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    array-length v0, p2

    if-eq p1, v0, :cond_2

    aget-object v0, p2, p1

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->stream:Ljava/io/OutputStream;

    aget-object v2, p2, p1

    invoke-static {v2}, Lorg/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string p2, "no matching signature found in composite"

    invoke-direct {p1, p2}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->stream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public verify([B)Z
    .locals 5

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$CompositeVerifier;->sigs:[Ljava/security/Signature;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    xor-int/lit8 p1, v1, 0x1

    return p1

    :goto_2
    new-instance v0, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception obtaining signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

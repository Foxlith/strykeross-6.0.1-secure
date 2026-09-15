.class Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;
.super Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/RawContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RawSigVerifier"
.end annotation


# instance fields
.field private rawSignature:Ljava/security/Signature;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;Ljava/security/Signature;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;)V

    iput-object p4, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public verify([B)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->verify([B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v0
.end method

.method public verify([B[B)Z
    .locals 3

    .line 2
    const-string v0, "exception obtaining raw signature: "

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    iget-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {p1, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;->rawSignature:Ljava/security/Signature;

    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw p1
.end method

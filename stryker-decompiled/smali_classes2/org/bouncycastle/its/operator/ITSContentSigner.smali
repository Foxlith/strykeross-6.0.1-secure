.class public interface abstract Lorg/bouncycastle/its/operator/ITSContentSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
.end method

.method public abstract getAssociatedCertificateDigest()[B
.end method

.method public abstract getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getSignature()[B
.end method

.method public abstract isForSelfSigning()Z
.end method

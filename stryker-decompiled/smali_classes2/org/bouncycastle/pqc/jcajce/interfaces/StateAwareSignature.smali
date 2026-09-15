.class public interface abstract Lorg/bouncycastle/pqc/jcajce/interfaces/StateAwareSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getUpdatedPrivateKey()Ljava/security/PrivateKey;
.end method

.method public abstract initSign(Ljava/security/PrivateKey;)V
.end method

.method public abstract initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
.end method

.method public abstract initVerify(Ljava/security/PublicKey;)V
.end method

.method public abstract initVerify(Ljava/security/cert/Certificate;)V
.end method

.method public abstract isSigningCapable()Z
.end method

.method public abstract sign([BII)I
.end method

.method public abstract sign()[B
.end method

.method public abstract update(B)V
.end method

.method public abstract update(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract update([B)V
.end method

.method public abstract update([BII)V
.end method

.method public abstract verify([B)Z
.end method

.method public abstract verify([BII)Z
.end method

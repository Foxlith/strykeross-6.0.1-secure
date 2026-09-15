.class public interface abstract Lorg/bouncycastle/crypto/modes/AEADCipher;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract doFinal([BI)I
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getMac()[B
.end method

.method public abstract getOutputSize(I)I
.end method

.method public abstract getUpdateOutputSize(I)I
.end method

.method public abstract init(ZLorg/bouncycastle/crypto/CipherParameters;)V
.end method

.method public abstract processAADByte(B)V
.end method

.method public abstract processAADBytes([BII)V
.end method

.method public abstract processByte(B[BI)I
.end method

.method public abstract processBytes([BII[BI)I
.end method

.method public abstract reset()V
.end method

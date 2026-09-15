.class public Lorg/bouncycastle/crypto/macs/Blake3Mac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private final theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake3Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lorg/bouncycastle/crypto/params/Blake3Parameters;->key([B)Lorg/bouncycastle/crypto/params/Blake3Parameters;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, p1

    .line 18
    :goto_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/Blake3Parameters;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    check-cast v0, Lorg/bouncycastle/crypto/params/Blake3Parameters;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Blake3Parameters;->getKey()[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->init(Lorg/bouncycastle/crypto/params/Blake3Parameters;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "Blake3Mac requires a key parameter."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v1, "Invalid parameter passed to Blake3Mac init - "

    .line 47
    .line 48
    invoke-static {p1, v1}, Ll1/e;->m(Lorg/bouncycastle/crypto/CipherParameters;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->update([BII)V

    return-void
.end method

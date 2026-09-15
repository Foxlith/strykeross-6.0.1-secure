.class Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdjustedXof"
.end annotation


# instance fields
.field private final length:I

.field private final xof:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Xof;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    iput p2, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->length:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->doFinal([BII)I

    move-result p1

    return p1
.end method

.method public doFinal([BII)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p1

    return p1
.end method

.method public doOutput([BII)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Xof;->doOutput([BII)I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->length:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;->xof:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

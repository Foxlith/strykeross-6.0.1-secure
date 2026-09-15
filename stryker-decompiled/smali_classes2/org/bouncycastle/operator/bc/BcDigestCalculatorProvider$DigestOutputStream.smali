.class Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DigestOutputStream"
.end annotation


# instance fields
.field private dig:Lorg/bouncycastle/crypto/Digest;

.field final synthetic this$0:Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->this$0:Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/bouncycastle/crypto/Digest;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.class Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

.field final synthetic val$digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;->val$digest:Lorg/bouncycastle/crypto/Digest;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;->val$digest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

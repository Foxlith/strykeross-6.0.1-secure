.class Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

.field final synthetic this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

.field final synthetic val$digest:Lorg/bouncycastle/crypto/Digest;

.field final synthetic val$os:Ljava/io/OutputStream;

.field final synthetic val$parentDigest:[B

.field final synthetic val$parentTBSDigest:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Digest;[B[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$os:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p4, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentTBSDigest:[B

    iput-object p5, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentDigest:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance p3, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    sget-object p4, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    invoke-static {p1}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->access$000(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {p4, p1}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public verify([B)Z
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    iget-object v4, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    invoke-static {v4}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->access$100(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentTBSDigest:[B

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentDigest:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->verifySignature([B)Z

    move-result p1

    return p1
.end method

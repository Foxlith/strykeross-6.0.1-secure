.class Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;->build(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private stream:Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

.field final synthetic this$0:Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;

.field final synthetic val$sig:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;Lorg/bouncycastle/crypto/Signer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->this$0:Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;

    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->val$sig:Lorg/bouncycastle/crypto/Signer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    invoke-direct {p1, p2}, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->this$0:Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;->access$000(Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;->getSignature()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception obtaining signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

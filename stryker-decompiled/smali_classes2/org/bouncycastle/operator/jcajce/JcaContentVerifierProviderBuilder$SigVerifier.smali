.class Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SigVerifier"
.end annotation


# instance fields
.field private final algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final signature:Ljava/security/Signature;

.field protected final stream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->signature:Ljava/security/Signature;

    invoke-static {p3}, Lorg/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->stream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->stream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "verifier not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verify([B)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception obtaining signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.class Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;

.field final synthetic val$certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;

    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;->val$certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;->val$certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->extractKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;

    .line 14
    .line 15
    invoke-static {v1, p1, v0}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->access$000(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$SigVerifier;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;

    .line 22
    .line 23
    invoke-direct {v1, v2, p1, v0}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$SigVerifier;-><init>(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/bc/BcSignerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 29
    .line 30
    const-string v1, "exception on setup: "

    .line 31
    .line 32
    invoke-static {v1, p1}, Ll1/e;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;->val$certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

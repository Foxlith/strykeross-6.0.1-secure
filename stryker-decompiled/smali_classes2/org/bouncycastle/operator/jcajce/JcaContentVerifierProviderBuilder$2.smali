.class Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

.field final synthetic val$publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Ljava/security/PublicKey;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->access$000(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    instance-of v1, v0, Lorg/bouncycastle/jcajce/CompositePublicKey;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-static {v2, p1, v3}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->access$300(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    invoke-static {v3, p1, v4}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->access$200(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;

    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v4, v5, p1, v2, v3}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;Ljava/security/Signature;)V

    return-object v4

    :cond_1
    new-instance v3, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;

    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v3, v4, p1, v2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;)V
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v0, "no matching algorithm found for key"

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->access$300(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->val$publicKey:Ljava/security/PublicKey;

    invoke-static {v1, p1, v2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->access$200(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v2, v3, p1, v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$RawSigVerifier;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;Ljava/security/Signature;)V

    return-object v2

    :cond_4
    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v1, v2, p1, v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder$SigVerifier;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Signature;)V

    return-object v1
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

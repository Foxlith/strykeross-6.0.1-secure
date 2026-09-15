.class Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/DigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-static {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->access$000(Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;)Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createDigest(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;-><init>(Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;

    invoke-direct {v0, p0, p1, v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1$1;-><init>(Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$1;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception on setup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

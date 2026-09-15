.class public Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilderProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilderProvider;


# instance fields
.field private digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/bc/BcDigestProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilderProvider;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilderProvider;)Lorg/bouncycastle/operator/bc/BcDigestProvider;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilderProvider;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    return-object p0
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilderProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilderProvider$1;-><init>(Lorg/bouncycastle/pkcs/bc/BcPKCS12MacCalculatorBuilderProvider;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-object v0
.end method

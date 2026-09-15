.class public abstract Lorg/bouncycastle/operator/SymmetricKeyWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/KeyWrapper;


# instance fields
.field private algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/SymmetricKeyWrapper;->algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/SymmetricKeyWrapper;->algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

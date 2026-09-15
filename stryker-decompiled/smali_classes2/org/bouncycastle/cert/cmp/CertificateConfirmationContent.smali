.class public Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

.field private digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;-><init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    return-void
.end method


# virtual methods
.method public getStatusMessages()[Lorg/bouncycastle/cert/cmp/CertificateStatus;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->toCertStatusArray()[Lorg/bouncycastle/asn1/cmp/CertStatus;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/bouncycastle/cert/cmp/CertificateStatus;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lorg/bouncycastle/cert/cmp/CertificateStatus;

    iget-object v5, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    aget-object v6, v0, v3

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/cert/cmp/CertificateStatus;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/asn1/cmp/CertStatus;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    return-object v0
.end method

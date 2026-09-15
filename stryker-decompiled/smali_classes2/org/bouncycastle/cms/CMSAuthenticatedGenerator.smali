.class public Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;
.super Lorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "SourceFile"


# instance fields
.field protected authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field protected unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "contentType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digestAlgID"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digest"

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "macAlgID"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public setAuthenticatedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.method public setUnauthenticatedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

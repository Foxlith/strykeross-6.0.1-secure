.class public Lorg/bouncycastle/dvcs/DVCSResponse;
.super Lorg/bouncycastle/dvcs/DVCSMessage;
.source "SourceFile"


# instance fields
.field private asn1:Lorg/bouncycastle/asn1/dvcs/DVCSResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSMessage;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    sget-object v0, Lorg/bouncycastle/asn1/dvcs/DVCSObjectIdentifiers;->id_ct_DVCSResponseData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/dvcs/DVCSResponse;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v0, "ContentInfo not a DVCS Response"

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSResponse;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSResponse;

    return-object v0
.end method

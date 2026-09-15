.class public Lorg/bouncycastle/cmc/SimplePKIResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private final certificateResponse:Lorg/bouncycastle/cms/CMSSignedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lorg/bouncycastle/cms/CMSSignedData;
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedContent()Lorg/bouncycastle/cms/CMSTypedData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/cmc/CMCException;

    const-string v0, "malformed response: Signed Content found"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/cmc/CMCException;

    const-string v0, "malformed response: SignerInfo structures found"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cmc/CMCException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/cmc/SimplePKIResponse;->parseBytes([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cmc/SimplePKIResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Lorg/bouncycastle/cmc/CMCException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "malformed data: "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method


# virtual methods
.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cmc/SimplePKIResponse;->certificateResponse:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

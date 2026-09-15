.class public abstract Lorg/bouncycastle/mime/smime/SMimeParserListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/mime/MimeParserListener;


# instance fields
.field private digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

.field private parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public content(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "content handling not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createContext(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)Lorg/bouncycastle/mime/MimeContext;
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-virtual {v0}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->getDigestCalculators()[Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    iget-object p1, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/mime/ConstantMimeContext;

    invoke-direct {p1}, Lorg/bouncycastle/mime/ConstantMimeContext;-><init>()V

    return-object p1
.end method

.method public envelopedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/cms/OriginatorInformation;Lorg/bouncycastle/cms/RecipientInformationStore;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "envelopedData handling not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 9

    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-pkcs7-signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->content(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;

    invoke-direct {v0, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;

    move-result-object p3

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->envelopedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/cms/OriginatorInformation;Lorg/bouncycastle/cms/RecipientInformationStore;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSContentInfoParser;->close()V

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    array-length v3, v2

    if-eq v1, v3, :cond_4

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p3

    new-instance v1, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v1, v0, p3}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSSignedData;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSSignedData;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v6

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSSignedData;->getAttributeCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->signedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/cms/SignerInformationStore;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :goto_4
    new-instance p2, Lorg/bouncycastle/mime/MimeIOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "CMS failure: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/mime/MimeIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public signedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/cms/SignerInformationStore;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "signedData handling not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

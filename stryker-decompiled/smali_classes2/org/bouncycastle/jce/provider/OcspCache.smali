.class Lorg/bouncycastle/jce/provider/OcspCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RESPONSE_SIZE:I = 0x8000

.field private static final DEFAULT_TIMEOUT:I = 0x3a98

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/URI;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ocsp/CertID;",
            "Lorg/bouncycastle/asn1/ocsp/OCSPResponse;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOcspResponse(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ocsp/CertID;",
            "Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Lorg/bouncycastle/asn1/ocsp/OCSPResponse;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    const-string v2, "configuration error: "

    sget-object v3, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    move v8, v5

    :goto_1
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v9

    if-eqz v9, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v6, v4

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    return-object v6

    :cond_3
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/ocsp/Request;

    invoke-direct {v7, p0, v4}, Lorg/bouncycastle/asn1/ocsp/Request;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v8, v4

    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    if-eq v5, v9, :cond_5

    move-object/from16 v9, p4

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/Extension;

    invoke-interface {v10}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v11

    sget-object v12, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v8, v11

    :cond_4
    new-instance v12, Lorg/bouncycastle/asn1/x509/Extension;

    new-instance v13, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v10}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/security/cert/Extension;->isCritical()Z

    move-result v10

    invoke-direct {v12, v13, v10, v11}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-virtual {v7, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    new-instance v5, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v6

    invoke-direct {v5, v4, v9, v6}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    :try_start_2
    new-instance v6, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {v6, v5, v4}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/bouncycastle/asn1/ocsp/TBSRequest;Lorg/bouncycastle/asn1/ocsp/Signature;)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v6, 0x3a98

    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string v6, "POST"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Content-type"

    const-string v7, "application/ocsp-request"

    invoke-virtual {v3, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-length"

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    if-gez v3, :cond_6

    const v3, 0x8000

    :cond_6
    invoke-static {v5, v3}, Lorg/bouncycastle/util/io/Streams;->readAllLimited(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getIntValue()I

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponseType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    :try_start_3
    invoke-static {v5, v6, v8, v7, v9}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->validatedOcspResponse(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;[BLjava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v4, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-object v3

    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_5

    :cond_8
    move-object/from16 v6, p1

    :cond_9
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "OCSP response failed to validate"

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v0, v1, v4, v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_a
    move-object/from16 v6, p1

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OCSP responder failed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v0, v1, v4, v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :catch_3
    move-exception v0

    move-object/from16 v6, p1

    move-object v1, v0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

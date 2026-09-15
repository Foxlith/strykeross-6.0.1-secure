.class public Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/smime/SMIMESignedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final detHeaders:[Ljava/lang/String;

.field private static final detValues:[Ljava/lang/String;

.field private static final encHeaders:[Ljava/lang/String;

.field private static final encValues:[Ljava/lang/String;


# instance fields
.field contentTransferEncoding:Ljava/lang/String;

.field private final encapsulated:Z

.field private final extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final micAlgs:Ljava/util/Map;

.field private final sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Content-Type"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detHeaders:[Ljava/lang/String;

    const-string v1, "multipart/signed; protocol=\"application/pkcs7-signature\""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detValues:[Ljava/lang/String;

    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "Content-Description"

    const-string v3, "Content-Disposition"

    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encHeaders:[Ljava/lang/String;

    const-string v0, "base64"

    const-string v1, "S/MIME Signed Message"

    const-string v2, "application/pkcs7-mime; name=\"smime.p7m\"; smime-type=enveloped-data"

    const-string v3, "attachment; filename=\"smime.p7m\""

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->extraHeaders:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->STANDARD_MICALGS:Ljava/util/Map;

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->micAlgs:Ljava/util/Map;

    const-string v0, "base64"

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    iput-boolean p1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encapsulated:Z

    return-void
.end method

.method public static synthetic access$100(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;)Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    return-object p0
.end method

.method private addBoundary(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    const-string v0, ";\r\n\tboundary=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private addHashHeader(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->micAlgs:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "unknown"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v4

    if-eq v4, v3, :cond_2

    const-string v3, "; micalg=\""

    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    const-string v3, "; micalg="

    goto :goto_2

    :cond_3
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p2

    if-eq p2, v3, :cond_5

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    return-void
.end method

.method private generateBoundary()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0xb4

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v0, 0xb3

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSSignedGenerator;->addCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    return-object p0
.end method

.method public addCertificates(Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSSignedGenerator;->addCertificates(Lorg/bouncycastle/util/Store;)V

    return-object p0
.end method

.method public addSignerInfoGenerator(Lorg/bouncycastle/cms/SignerInfoGenerator;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSSignedGenerator;->addSignerInfoGenerator(Lorg/bouncycastle/cms/SignerInfoGenerator;)V

    return-object p0
.end method

.method public build(Ljava/io/OutputStream;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter;
    .locals 7

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-boolean v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encapsulated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_0
    sget-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encHeaders:[Ljava/lang/String;

    array-length v3, v0

    if-eq v1, v3, :cond_0

    aget-object v0, v0, v1

    sget-object v3, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    move-object v3, v0

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    sget-object v4, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getDigestAlgorithms()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->addHashHeader(Ljava/lang/StringBuffer;Ljava/util/List;)V

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->addBoundary(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v4, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detHeaders:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1
    sget-object v3, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detHeaders:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    sget-object v4, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->extraHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    new-instance v6, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMimeUtils;->autoBuffer(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMESignedWriter$1;)V

    return-object v6
.end method

.method public withHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->extraHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

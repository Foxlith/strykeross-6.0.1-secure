.class public Lorg/bouncycastle/mime/smime/SMIMESignedWriter;
.super Lorg/bouncycastle/mime/MimeWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;,
        Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;
    }
.end annotation


# static fields
.field public static final RFC3851_MICALGS:Ljava/util/Map;

.field public static final RFC5751_MICALGS:Ljava/util/Map;

.field public static final STANDARD_MICALGS:Ljava/util/Map;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final contentTransferEncoding:Ljava/lang/String;

.field private final mimeOut:Ljava/io/OutputStream;

.field private final sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "sha-1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "sha-224"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "sha-256"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "sha-384"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "sha-512"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "gostr3411-94"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "gostr3411-2012-256"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "gostr3411-2012-512"

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->RFC5751_MICALGS:Ljava/util/Map;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha1"

    invoke-virtual {v14, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha224"

    invoke-virtual {v14, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha256"

    invoke-virtual {v14, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha384"

    invoke-virtual {v14, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha512"

    invoke-virtual {v14, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->RFC3851_MICALGS:Ljava/util/Map;

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->STANDARD_MICALGS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/mime/Headers;

    invoke-static {p2}, Lorg/bouncycastle/mime/MimeWriter;->mapToLines(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/mime/MimeWriter;-><init>(Lorg/bouncycastle/mime/Headers;)V

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->access$100(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;)Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object p1, p1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->contentTransferEncoding:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMESignedWriter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getContentStream()Ljava/io/OutputStream;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/mime/MimeWriter;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/mime/Headers;->dumpHeaders(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v2, "This is an S/MIME signed message\r\n"

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v2, "\r\n--"

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Lorg/bouncycastle/mime/encoding/Base64OutputStream;

    invoke-direct {v7, v6}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-static {v2}, Lorg/bouncycastle/mime/smime/SMimeUtils;->createUnclosable(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v3, v2}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;-><init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

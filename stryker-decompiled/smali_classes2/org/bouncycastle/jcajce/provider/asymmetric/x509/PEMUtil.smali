.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    }
.end annotation


# instance fields
.field private final _supportedBoundaries:[Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    .line 6
    .line 7
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$1;)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v1, v0, v3

    .line 15
    .line 16
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    .line 17
    .line 18
    const-string v3, "X509 "

    .line 19
    .line 20
    invoke-static {v3, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v1, p0, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$1;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    aput-object v1, v0, p1

    .line 29
    .line 30
    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    .line 31
    .line 32
    const-string v1, "PKCS7"

    .line 33
    .line 34
    invoke-direct {p1, p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$1;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    aput-object p1, v0, v1

    .line 39
    .line 40
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    .line 41
    .line 42
    return-void
.end method

.method private getBoundaries(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    array-length v2, v1

    if-eq v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedFooter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0xd

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    if-ltz v1, :cond_1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    if-gez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    :cond_5
    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public readPEMObject(Ljava/io/InputStream;Z)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->getBoundaries(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "malformed PEM data: found footer where header was expected"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez v2, :cond_4

    if-nez p2, :cond_3

    return-object v1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "malformed PEM data: no header found"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_7

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->getBoundaries(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedFooter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "malformed PEM data: header/footer mismatch"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "malformed PEM data encountered"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object v1

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "malformed PEM data: no footer found"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

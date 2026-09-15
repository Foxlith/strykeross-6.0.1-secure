.class public Lorg/bouncycastle/est/ESTService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final CACERTS:Ljava/lang/String; = "/cacerts"

.field protected static final CSRATTRS:Ljava/lang/String; = "/csrattrs"

.field protected static final FULLCMC:Ljava/lang/String; = "/fullcmc"

.field protected static final SERVERGEN:Ljava/lang/String; = "/serverkeygen"

.field protected static final SIMPLE_ENROLL:Ljava/lang/String; = "/simpleenroll"

.field protected static final SIMPLE_REENROLL:Ljava/lang/String; = "/simplereenroll"

.field protected static final illegalParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pathInValid:Ljava/util/regex/Pattern;


# instance fields
.field private final clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

.field private final server:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "cacerts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "simpleenroll"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "simplereenroll"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "fullcmc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "serverkeygen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "csrattrs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "^[0-9a-zA-Z_\\-.~!$&\'()*+,;:=]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/ESTService;->pathInValid:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/est/ESTClientProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTService;->verifyServer(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "https://"

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p2}, Lorg/bouncycastle/est/ESTService;->verifyLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v1, "/.well-known/est/"

    .line 17
    .line 18
    invoke-static {v0, p1, v1, p2}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string p2, "/.well-known/est"

    .line 26
    .line 27
    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    iput-object p3, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/est/ESTService;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTService;->annotateRequest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private annotateRequest([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v3, v2, 0x30

    array-length v4, p1

    if-ge v3, v4, :cond_1

    const/16 v4, 0x30

    invoke-static {p1, v2, v4}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v2, p1

    :goto_0
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    array-length v3, p1

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static storeToArray(Lorg/bouncycastle/util/Store;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;)[",
            "Lorg/bouncycastle/cert/X509CertificateHolder;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/est/ESTService;->storeToArray(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Selector;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p0

    return-object p0
.end method

.method public static storeToArray(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Selector;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;",
            "Lorg/bouncycastle/util/Selector<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;)[",
            "Lorg/bouncycastle/cert/X509CertificateHolder;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object p0
.end method

.method private verifyLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :goto_0
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v2, v0}, Lorg/bouncycastle/math/ec/a;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    sget-object v0, Lorg/bouncycastle/est/ESTService;->pathInValid:Ljava/util/regex/Pattern;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    sget-object v0, Lorg/bouncycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    .line 58
    .line 59
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v1, "Label "

    .line 69
    .line 70
    const-string v2, " is a reserved path segment."

    .line 71
    .line 72
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string v1, "Server path "

    .line 83
    .line 84
    const-string v2, " contains invalid characters"

    .line 85
    .line 86
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string v0, "Label set but after trimming \'/\' is not zero length string."

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method private verifyServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    const-string v1, "://"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    new-instance v1, Ljava/net/URL;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "https://"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string v0, "Server contains path, must only be <dnsname/ipaddress>:port, a path of \'/.well-known/est/<label>\' will be added arbitrarily."

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_2
    :goto_1
    return-object p1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string v0, "Server contains scheme, must only be <dnsname/ipaddress>:port, https:// will be added arbitrarily."

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_2
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    check-cast p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    throw p1

    .line 104
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "Scheme and host is invalid: "

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method


# virtual methods
.method public getCACerts()Lorg/bouncycastle/est/CACertsResponse;
    .locals 14

    const-string v0, "Response : "

    const-string v1, " got "

    const-string v2, "Decoding CACerts: "

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/cacerts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v5}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v7, "GET"

    invoke-direct {v6, v7, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v7, 0xc8

    const-string v13, "Get CACerts: "

    if-ne v6, v7, :cond_4

    :try_start_2
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getHeaders()Lorg/bouncycastle/est/HttpUtil$Headers;

    move-result-object v6

    const-string v7, "Content-Type"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "application/pkcs7-mime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v7, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_3
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cmc/SimplePKIResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    move-object v1, v0

    :goto_0
    move-object v8, v0

    move-object v9, v1

    goto :goto_4

    :goto_1
    :try_start_4
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto/16 :goto_6

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, " but was not present."

    :goto_3
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Expecting application/pkcs7-mime "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v0, v3, v1, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2

    :cond_4
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_7

    move-object v8, v3

    move-object v9, v8

    :goto_4
    new-instance v0, Lorg/bouncycastle/est/CACertsResponse;

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v11

    iget-object v1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v1}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/est/CACertsResponse;-><init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v3

    goto :goto_5

    :catch_0
    move-exception v1

    :goto_5
    if-eqz v1, :cond_6

    instance-of v0, v1, Lorg/bouncycastle/est/ESTException;

    if-eqz v0, :cond_5

    check-cast v1, Lorg/bouncycastle/est/ESTException;

    throw v1

    :cond_5
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v4

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0

    :cond_6
    return-object v0

    :cond_7
    :try_start_6
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception v0

    :goto_6
    :try_start_7
    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_8
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_7
    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    :cond_9
    throw v0
.end method

.method public getCSRAttributes()Lorg/bouncycastle/est/CSRRequestResponse;
    .locals 9

    const-string v0, "CSR Attribute request: "

    const-string v1, "Decoding CACerts: "

    iget-object v2, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v2}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/csrattrs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v4}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v6, "GET"

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_2

    const/16 v1, 0xcc

    if-eq v6, v1, :cond_0

    const/16 v1, 0x194

    if-ne v6, v1, :cond_1

    :cond_0
    move-object v5, v2

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v0, v2, v3, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto/16 :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    new-instance v5, Lorg/bouncycastle/est/CSRAttributesResponse;

    invoke-static {v0}, Lorg/bouncycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/CsrAttrs;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/bouncycastle/est/CSRAttributesResponse;-><init>(Lorg/bouncycastle/asn1/est/CsrAttrs;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_0
    :try_start_3
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    if-eqz v0, :cond_4

    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :cond_3
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v4

    invoke-direct {v1, v3, v0, v4, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/bouncycastle/est/CSRRequestResponse;

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/est/CSRRequestResponse;-><init>(Lorg/bouncycastle/est/CSRAttributesResponse;Lorg/bouncycastle/est/Source;)V

    return-object v0

    :goto_2
    :try_start_4
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v1, v0, v3, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v0

    :goto_3
    :try_start_5
    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_5
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_4
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :cond_6
    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No trust anchors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 8

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xca

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr v0, v5

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :catch_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :goto_1
    new-instance v6, Lorg/bouncycastle/est/EnrollmentResponse;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/EnrollmentResponse;-><init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    return-object v6

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse Retry-After header:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_0
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got Status 202 but not Retry-After header from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_2
    new-instance v1, Lorg/bouncycastle/cmc/SimplePKIResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cmc/SimplePKIResponse;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_2
    .catch Lorg/bouncycastle/cmc/CMCException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v1}, Lorg/bouncycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v3

    new-instance v0, Lorg/bouncycastle/est/EnrollmentResponse;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getSource()Lorg/bouncycastle/est/Source;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/est/EnrollmentResponse;-><init>(Lorg/bouncycastle/util/Store;JLorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    return-object v0

    :catch_2
    move-exception p1

    new-instance v0, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cmc/CMCException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Simple Enroll: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
.end method

.method public simpleEnroll(Lorg/bouncycastle/est/EnrollmentResponse;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v1}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/est/EnrollmentResponse;->getRequestToRetry()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    instance-of v1, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No trust anchors."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public simpleEnroll(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequest;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 5

    .line 2
    const-string v0, ""

    iget-object v1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v1}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bouncycastle/est/ESTService;->annotateRequest([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "/simplereenroll"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "/simpleenroll"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {p1}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object p1

    new-instance v3, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v4, "POST"

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v3, p2}, Lorg/bouncycastle/est/ESTRequestBuilder;->withData([B)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v2

    const-string v3, "Content-Type"

    const-string v4, "application/pkcs10"

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string p2, "Content-Transfer-Encoding"

    const-string v0, "base64"

    invoke-virtual {v2, p2, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    if-eqz p3, :cond_1

    invoke-interface {p3, v2}, Lorg/bouncycastle/est/ESTAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_2
    return-object p1

    :goto_1
    :try_start_1
    instance-of p2, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    new-instance p2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_4
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No trust anchors."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public simpleEnrollPoP(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/bouncycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "/simplereenroll"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "/simpleenroll"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/est/ESTService;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-interface {p1}, Lorg/bouncycastle/est/ESTClientProvider;->makeClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string v3, "POST"

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v2, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;->withClient(Lorg/bouncycastle/est/ESTClient;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/est/ESTService$1;

    invoke-direct {v2, p0, p2, p3}, Lorg/bouncycastle/est/ESTService$1;-><init>(Lorg/bouncycastle/est/ESTService;Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->withConnectionListener(Lorg/bouncycastle/est/ESTSourceConnectionListener;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object p2

    if-eqz p4, :cond_1

    invoke-interface {p4, p2}, Lorg/bouncycastle/est/ESTAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTService;->handleEnrollResponse(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/EnrollmentResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_2
    return-object p1

    :goto_1
    :try_start_1
    instance-of p2, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    new-instance p2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_4
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No trust anchors."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Lorg/bouncycastle/est/ESTResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;
    }
.end annotation


# static fields
.field private static final ZERO:Ljava/lang/Long;


# instance fields
.field private HttpVersion:Ljava/lang/String;

.field private absoluteReadLimit:Ljava/lang/Long;

.field private contentLength:Ljava/lang/Long;

.field private final headers:Lorg/bouncycastle/est/HttpUtil$Headers;

.field private inputStream:Ljava/io/InputStream;

.field private final lineBuffer:[B

.field private final originalRequest:Lorg/bouncycastle/est/ESTRequest;

.field private read:J

.field private final source:Lorg/bouncycastle/est/Source;

.field private statusCode:I

.field private statusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/ESTResponse;->ZERO:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse;->originalRequest:Lorg/bouncycastle/est/ESTRequest;

    iput-object p2, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    instance-of p1, p2, Lorg/bouncycastle/est/LimitedSource;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lorg/bouncycastle/est/LimitedSource;

    invoke-interface {p1}, Lorg/bouncycastle/est/LimitedSource;->getAbsoluteReadLimit()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    :cond_0
    const-string p1, "org.bouncycastle.debug.est"

    invoke-static {p1}, Lorg/bouncycastle/util/Properties;->asKeySet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "input"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "all"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lorg/bouncycastle/est/Source;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p1, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;

    invoke-interface {p2}, Lorg/bouncycastle/est/Source;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;-><init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;Lorg/bouncycastle/est/ESTResponse$1;)V

    goto :goto_0

    :goto_2
    new-instance p1, Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-direct {p1}, Lorg/bouncycastle/est/HttpUtil$Headers;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    invoke-direct {p0}, Lorg/bouncycastle/est/ESTResponse;->process()V

    return-void
.end method

.method public static synthetic access$100(Lorg/bouncycastle/est/ESTResponse;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    return-wide v0
.end method

.method public static synthetic access$108(Lorg/bouncycastle/est/ESTResponse;)J
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    return-wide v0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    return-object p0
.end method

.method private process()V
    .locals 6

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->HttpVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->statusMessage:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lorg/bouncycastle/est/HttpUtil$Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    iget v1, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    const/16 v2, 0xcc

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v5, 0xca

    if-ne v1, v5, :cond_5

    :cond_2
    if-nez v0, :cond_3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Got HTTP status 204 but Content-length > 0."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    if-eqz v0, :cond_b

    sget-object v1, Lorg/bouncycastle/est/ESTResponse;->ZERO:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/bouncycastle/est/ESTResponse$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/ESTResponse$1;-><init>(Lorg/bouncycastle/est/ESTResponse;)V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content length longer than absolute read limit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/est/ESTResponse;->wrapWithCounter(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    const-string v0, "content-transfer-encoding"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/bouncycastle/est/CTEBase64InputStream;

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server returned negative content length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No Content-length header."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    invoke-interface {v0}, Lorg/bouncycastle/est/Source;->close()V

    return-void
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    .line 2
    .line 3
    const-string v1, "Content-Length"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    const-string v3, "Content Length: \'"

    .line 26
    .line 27
    const-string v4, "\' invalid. "

    .line 28
    .line 29
    invoke-static {v3, v0, v4}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v2
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders()Lorg/bouncycastle/est/HttpUtil$Headers;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->HttpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->originalRequest:Lorg/bouncycastle/est/ESTRequest;

    return-object v0
.end method

.method public getSource()Lorg/bouncycastle/est/Source;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public readStringIncluding(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v2

    aput-byte v5, v3, v1

    array-length v1, v3

    if-ge v4, v1, :cond_3

    const/4 v1, -0x1

    if-eq v2, p1, :cond_1

    if-gt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v2, v1, :cond_2

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v0, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server sent line > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wrapWithCounter(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/est/ESTResponse$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/est/ESTResponse$2;-><init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;Ljava/lang/Long;)V

    return-object v0
.end method

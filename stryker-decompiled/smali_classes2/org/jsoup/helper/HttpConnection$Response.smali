.class public Lorg/jsoup/helper/HttpConnection$Response;
.super Lorg/jsoup/helper/HttpConnection$Base;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/HttpConnection$Base<",
        "Lorg/jsoup/Connection$Response;",
        ">;",
        "Lorg/jsoup/Connection$Response;"
    }
.end annotation


# static fields
.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final xmlContentTypeRxp:Ljava/util/regex/Pattern;


# instance fields
.field private bodyStream:Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private byteData:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private charset:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private conn:Ljava/net/HttpURLConnection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private executed:Z

.field private inputStreamRead:Z

.field private numRedirects:I

.field private final req:Lorg/jsoup/helper/HttpConnection$Request;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(application|text)/\\w*\\+?xml.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    iput v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    const/16 v1, 0x190

    iput v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    const-string v1, "Request not made"

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    new-instance v1, Lorg/jsoup/helper/HttpConnection$Request;

    invoke-direct {v1}, Lorg/jsoup/helper/HttpConnection$Request;-><init>()V

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V
    .locals 1
    .param p3    # Lorg/jsoup/helper/HttpConnection$Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection$Response;->createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->processResponseHeaders(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    invoke-static {p2, v0, p1}, Lorg/jsoup/helper/CookieUtil;->storeCookies(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/URL;Ljava/util/Map;)V

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/jsoup/helper/HttpConnection$Response;->cookies()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->hasCookie(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    :cond_1
    invoke-direct {p3}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    iget p1, p3, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    const/16 p2, 0x14

    if-ge p1, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p3}, Lorg/jsoup/helper/HttpConnection$Response;->url()Ljava/net/URL;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Too many redirects occurred trying to load URL %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private static createConnection(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;
    .locals 5

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->proxy()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_2
    invoke-static {p0, v0}, Lorg/jsoup/helper/CookieUtil;->applyCookiesToRequest(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/HttpURLConnection;)V

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->multiHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static execute(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 8
    .param p1    # Lorg/jsoup/helper/HttpConnection$Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$600(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result v0

    const-string v1, "Multiple threads were detected trying to execute the same request concurrently. Make sure to use Connection#newRequest() and do not share an executing request between threads."

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v1, "req"

    invoke-static {p0, v1}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v1

    const-string v2, "URL must be specified to connect"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    const-string p1, "Only http & https protocols supported"

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v1

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v1, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot set a request body for HTTP method "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_5

    if-eqz v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    :goto_2
    move-object v1, v5

    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->createConnection(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0, v4, v1}, Lorg/jsoup/helper/HttpConnection$Response;->writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :catch_0
    move-exception p1

    goto/16 :goto_c

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw p1

    :cond_7
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v4, Lorg/jsoup/helper/HttpConnection$Response;

    invoke-direct {v4, v2, p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;-><init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string p1, "Location"

    invoke-virtual {v4, p1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeader(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->followRedirects()Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x133

    if-eq v1, p1, :cond_8

    sget-object p1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-virtual {p0, v5}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    const-string p1, "Content-Type"

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v5, v4

    goto/16 :goto_c

    :cond_8
    :goto_6
    const-string p1, "Location"

    invoke-virtual {v4, p1}, Lorg/jsoup/helper/HttpConnection$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const-string v0, "http:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection;->encodeUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    invoke-static {p0, v3}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    invoke-static {p0, v4}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {p0, v3}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    return-object p1

    :cond_a
    const/16 p1, 0xc8

    if-lt v1, p1, :cond_b

    const/16 p1, 0x190

    if-lt v1, p1, :cond_c

    :cond_b
    :try_start_7
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreHttpErrors()Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_c
    invoke-virtual {v4}, Lorg/jsoup/helper/HttpConnection$Response;->contentType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreContentType()Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "text/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    const-string v1, "Unhandled content type. Must be text/*, application/xml, or application/*+xml"

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_7
    if-eqz p1, :cond_f

    sget-object v1, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$700(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;

    :cond_f
    iget-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object p1

    sget-object v1, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    if-eq p1, v1, :cond_13

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_8

    :cond_10
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_8
    iput-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const-string p1, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v4, p1, v1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    iget-object v1, v4, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_9
    iput-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    goto :goto_a

    :cond_11
    const-string p1, "Content-Encoding"

    const-string v1, "deflate"

    invoke-virtual {v4, p1, v1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Ljava/util/zip/InflaterInputStream;

    iget-object v1, v4, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_9

    :cond_12
    :goto_a
    iget-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v1

    const v2, 0x8000

    invoke-static {p1, v2, v1}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v6, v7, v1, v2}, Lorg/jsoup/internal/ConstrainableInputStream;->timeout(JJ)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    goto :goto_b

    :cond_13
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->emptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_b
    invoke-static {p0, v3}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    iput-boolean v0, v4, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    return-object v4

    :cond_14
    :try_start_8
    new-instance p1, Lorg/jsoup/HttpStatusException;

    const-string v0, "HTTP error fetching URL"

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_c
    if-eqz v5, :cond_15

    :try_start_9
    invoke-direct {v5}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    :cond_15
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_d
    invoke-static {p0, v3}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    throw p1

    :catchall_2
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method private prepareByteData()V
    .locals 3

    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v1, "Request has already been read (with .parse())"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v2}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v2, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method private safeClose()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    :cond_1
    return-void
.end method

.method private static serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V
    .locals 7

    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/Connection$KeyVal;

    invoke-interface {v4}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    move-result v5

    const-string v6, "InputStream data not supported in URL query string."

    invoke-static {v5, v6}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    const/16 v5, 0x26

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_2
    invoke-interface {v4}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/net/URL;

    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/jsoup/Connection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method private static setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/form-data; boundary="

    if-eqz v1, :cond_0

    const-string v3, "multipart/form-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "boundary"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->access$900(Lorg/jsoup/Connection$Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application/x-www-form-urlencoded; charset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private static writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p2, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "--"

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/helper/HttpConnection;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "\r\n\r\n"

    if-eqz v3, :cond_1

    const-string v5, "; filename=\""

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jsoup/helper/HttpConnection;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v5, "\"\r\nContent-Type: "

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->contentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "application/octet-stream"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-static {v3, p1}, Lorg/jsoup/helper/DataUtil;->crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->requestBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    if-nez p2, :cond_5

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    :goto_4
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public body()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public bodyAsBytes()[B
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public bodyStream()Ljava/io/BufferedInputStream;
    .locals 3

    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v1, "Request has already been read"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v1}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v1

    const v2, 0x8000

    invoke-static {v0, v2, v1}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bufferUp()Lorg/jsoup/Connection$Response;
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    return-object p0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic charset(Ljava/lang/String;)Lorg/jsoup/Connection$Response;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p1

    return-object p1
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    return-object p0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cookies()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->cookies()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasCookie(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers()Ljava/util/Map;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic method()Lorg/jsoup/Connection$Method;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->method()Lorg/jsoup/Connection$Method;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiHeaders()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->multiHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lorg/jsoup/nodes/Document;
    .locals 4

    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v1, "Input stream already read and parsed, cannot re-read."

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v3}, Lorg/jsoup/helper/HttpConnection$Request;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    new-instance v1, Lorg/jsoup/helper/HttpConnection;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/jsoup/helper/HttpConnection;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;Lorg/jsoup/helper/HttpConnection$1;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->connection(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    return-object v0
.end method

.method public processResponseHeaders(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "Set-Cookie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v4, v3}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v4, v3}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/jsoup/helper/HttpConnection$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_2

    :cond_5
    return-void
.end method

.method public bridge synthetic removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public statusCode()I
    .locals 1

    iget v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    return v0
.end method

.method public statusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->url()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

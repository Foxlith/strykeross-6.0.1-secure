.class Lorg/bouncycastle/est/jcajce/DefaultESTClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/ESTClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;
    }
.end annotation


# static fields
.field private static CRLF:[B

.field private static final utf8:Ljava/nio/charset/Charset;


# instance fields
.field private final sslSocketProvider:Lorg/bouncycastle/est/ESTClientSourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->utf8:Ljava/nio/charset/Charset;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/est/ESTClientSourceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->sslSocketProvider:Lorg/bouncycastle/est/ESTClientSourceProvider;

    return-void
.end method

.method private static writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    sget-object p1, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->CRLF:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;
    .locals 2

    const/16 v0, 0xf

    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->performRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->redirectURL(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    const-string v0, "Too many redirects.."

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;
    .locals 9

    const-string v0, "Connection"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->sslSocketProvider:Lorg/bouncycastle/est/ESTClientSourceProvider;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/est/ESTClientSourceProvider;->makeSource(Ljava/lang/String;I)Lorg/bouncycastle/est/Source;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getListener()Lorg/bouncycastle/est/ESTSourceConnectionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getListener()Lorg/bouncycastle/est/ESTSourceConnectionListener;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lorg/bouncycastle/est/ESTSourceConnectionListener;->onConnection(Lorg/bouncycastle/est/Source;Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTRequest;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :goto_0
    const-string v2, "org.bouncycastle.debug.est"

    invoke-static {v2}, Lorg/bouncycastle/util/Properties;->asKeySet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "output"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "all"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/bouncycastle/est/Source;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v2, Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;

    invoke-interface {v1}, Lorg/bouncycastle/est/Source;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;-><init>(Lorg/bouncycastle/est/jcajce/DefaultESTClient;Ljava/io/OutputStream;)V

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    const-string v4, ""

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-direct {v4, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "close"

    invoke-virtual {v4, v0, v5}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, "Host"

    if-le v0, v5, :cond_5

    :try_start_1
    const-string v0, "%s:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v8, 0x1

    aput-object p1, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v4, v7, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :goto_5
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " HTTP/1.1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move v5, v6

    :goto_6
    array-length v7, v4

    if-eq v5, v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->CRLF:[B

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/est/ESTRequest;->writeData(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getHijacker()Lorg/bouncycastle/est/ESTHijacker;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getHijacker()Lorg/bouncycastle/est/ESTHijacker;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/est/ESTHijacker;->hijack(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    invoke-interface {v1}, Lorg/bouncycastle/est/Source;->close()V

    :cond_8
    return-object p1

    :cond_9
    :try_start_2
    new-instance v0, Lorg/bouncycastle/est/ESTResponse;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/est/ESTResponse;-><init>(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :goto_7
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lorg/bouncycastle/est/Source;->close()V

    :cond_a
    throw p1
.end method

.method public redirectURL(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTRequest;
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client does not handle http status code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->withURL(Ljava/net/URL;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v2

    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-direct {v3, v4, v5, v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->withURL(Ljava/net/URL;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Redirect status type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but no location header"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

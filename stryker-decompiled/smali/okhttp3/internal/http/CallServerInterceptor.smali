.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method

.method private final shouldIgnoreAndWaitForRealResponse(I)Z
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x66

    if-gt v0, p1, :cond_1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13

    const-string v0, "Connection"

    const-string v1, "close"

    const-string v2, "HTTP "

    const-string v3, "chain"

    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->getExchange$okhttp()Lokhttp3/internal/connection/Exchange;

    move-result-object v3

    invoke-static {v3}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->getRequest$okhttp()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v3, p1}, Lokhttp3/internal/connection/Exchange;->writeRequestHeaders(Lokhttp3/Request;)V

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v4, :cond_4

    const-string v10, "100-continue"

    const-string v11, "Expect"

    invoke-virtual {p1, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    invoke-virtual {v3, v8}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v11, v7

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v10, v9

    goto :goto_3

    :cond_0
    move v11, v8

    move-object v10, v9

    :goto_0
    if-nez v10, :cond_2

    :try_start_2
    invoke-virtual {v4}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->flushRequest()V

    invoke-virtual {v3, p1, v8}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v8

    invoke-virtual {v4, v8}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    goto :goto_1

    :catch_2
    move-exception v4

    move v8, v11

    goto :goto_3

    :cond_1
    invoke-virtual {v3, p1, v7}, Lokhttp3/internal/connection/Exchange;->createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v8

    invoke-virtual {v4, v8}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {v8}, Lokio/Sink;->close()V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed$okhttp()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_1
    move v8, v11

    goto :goto_2

    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->noRequestBody()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v10, v9

    :goto_2
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->finishRequest()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    move-object v4, v9

    goto :goto_4

    :goto_3
    instance-of v11, v4, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v11, :cond_13

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->getHasFailure$okhttp()Z

    move-result v11

    if-eqz v11, :cond_12

    :goto_4
    if-nez v10, :cond_7

    :try_start_5
    invoke-virtual {v3, v7}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v10

    invoke-static {v10}, Li5/a;->m(Ljava/lang/Object;)V

    if-eqz v8, :cond_7

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    move v8, v7

    goto :goto_5

    :catch_3
    move-exception p1

    goto/16 :goto_9

    :cond_7
    :goto_5
    invoke-virtual {v10, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v10

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v11

    invoke-virtual {v10, v11}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    move-result v11

    invoke-direct {p0, v11}, Lokhttp3/internal/http/CallServerInterceptor;->shouldIgnoreAndWaitForRealResponse(I)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v3, v7}, Lokhttp3/internal/connection/Exchange;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v7

    invoke-static {v7}, Li5/a;->m(Ljava/lang/Object;)V

    if-eqz v8, :cond_8

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->responseHeadersStart()V

    :cond_8
    invoke-virtual {v7, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v7

    invoke-virtual {p1, v7}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    move-result v11

    :cond_9
    invoke-virtual {v3, v10}, Lokhttp3/internal/connection/Exchange;->responseHeadersEnd(Lokhttp3/Response;)V

    iget-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x65

    if-ne v11, p1, :cond_a

    invoke-virtual {v10}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    sget-object v5, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    invoke-virtual {p1, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    :goto_6
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto :goto_7

    :cond_a
    invoke-virtual {v10}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {v3, v10}, Lokhttp3/internal/connection/Exchange;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {p1, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    goto :goto_6

    :goto_7
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x2

    invoke-static {p1, v0, v9, v5, v9}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->noNewExchangesOnConnection()V

    :cond_c
    const/16 v0, 0xcc

    if-eq v11, v0, :cond_d

    const/16 v0, 0xcd

    if-ne v11, v0, :cond_10

    :cond_d
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    goto :goto_8

    :cond_e
    const-wide/16 v0, -0x1

    :goto_8
    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_10

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_f
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_10
    return-object p1

    :goto_9
    if-eqz v4, :cond_11

    invoke-static {v4, p1}, Lv1/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v4

    :cond_11
    throw p1

    :cond_12
    throw v4

    :cond_13
    throw v4
.end method

.class public Ljcifs/http/NtlmHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/http/NtlmHttpURLConnection$CacheStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final LM_COMPATIBILITY:I

.field private static final MAX_REDIRECTS:I


# instance fields
.field private authMethod:Ljava/lang/String;

.field private authProperty:Ljava/lang/String;

.field private cachedOutput:Ljava/io/ByteArrayOutputStream;

.field private connection:Ljava/net/HttpURLConnection;

.field private handshakeComplete:Z

.field private headerFields:Ljava/util/Map;

.field private requestProperties:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.maxRedirects"

    const-string v1, "20"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/http/NtlmHttpURLConnection;->LM_COMPATIBILITY:I

    const-string v0, "http.auth.ntlm.domain"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sput-object v0, Ljcifs/http/NtlmHttpURLConnection;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    return-void
.end method

.method private attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;
    .locals 12

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x400

    new-array v5, v4, [B

    :goto_0
    invoke-virtual {v1, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x191

    if-ne p1, v1, :cond_1

    const-string p1, "Authorization"

    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    const-string p1, "WWW-Authenticate"

    goto :goto_1

    :cond_1
    const-string p1, "Proxy-Authorization"

    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    const-string p1, "Proxy-Authenticate"

    :goto_1
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->getHeaderFields0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "NTLM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x20

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_4

    :goto_3
    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    goto :goto_5

    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v4, :cond_5

    goto :goto_2

    :cond_5
    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    const/4 p1, 0x5

    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    const-string v5, "Negotiate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v8, :cond_8

    goto :goto_2

    :cond_8
    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    const/16 p1, 0xa

    goto :goto_4

    :cond_9
    :goto_5
    move-object p1, v0

    :goto_6
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    if-eqz p1, :cond_b

    new-instance v1, Ljcifs/ntlmssp/Type2Message;

    invoke-static {p1}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    move-object v6, v1

    goto :goto_7

    :cond_b
    move-object v6, v0

    :goto_7
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->reconnect()V

    const/4 p1, 0x1

    if-nez v6, :cond_c

    new-instance v0, Ljcifs/ntlmssp/Type1Message;

    invoke-direct {v0}, Ljcifs/ntlmssp/Type1Message;-><init>()V

    sget v1, Ljcifs/http/NtlmHttpURLConnection;->LM_COMPATIBILITY:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_18

    invoke-virtual {v0, v4, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlag(IZ)V

    goto/16 :goto_c

    :cond_c
    sget-object v1, Ljcifs/http/NtlmHttpURLConnection;->DEFAULT_DOMAIN:Ljava/lang/String;

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v3, :cond_d

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_d
    move-object v8, v4

    :goto_8
    if-eq v7, v3, :cond_e

    add-int/2addr v7, p1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_e
    const/16 v4, 0x5c

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v3, :cond_f

    const/16 v4, 0x2f

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    :cond_f
    if-eq v4, v3, :cond_10

    invoke-virtual {v8, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_10
    if-eq v4, v3, :cond_11

    add-int/2addr v4, p1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_9

    :cond_11
    move-object v4, v8

    :cond_12
    :goto_9
    move-object v8, v1

    if-nez v4, :cond_17

    iget-boolean p1, p0, Ljava/net/HttpURLConnection;->allowUserInteraction:Z

    if-nez p1, :cond_13

    return-object v0

    :cond_13
    :try_start_0
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    if-ne p1, v3, :cond_15

    const-string p1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/16 p1, 0x1bb

    goto :goto_a

    :cond_14
    const/16 p1, 0x50

    :cond_15
    :goto_a
    const-string v2, ""

    iget-object v3, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object p1

    if-nez p1, :cond_16

    return-object v0

    :cond_16
    invoke-virtual {p1}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    move-object v9, v4

    goto :goto_b

    :catch_0
    :cond_17
    move-object v9, v4

    move-object v7, v5

    :goto_b
    new-instance v0, Ljcifs/ntlmssp/Type3Message;

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_18
    :goto_c
    return-object v0
.end method

.method private doHandshake()V
    .locals 12

    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->connect()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x197

    const/16 v3, 0x191

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Ljcifs/http/NtlmHttpURLConnection;->attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;

    move-result-object v1

    check-cast v1, Ljcifs/ntlmssp/Type1Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_0
    :try_start_2
    sget v5, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    if-ge v4, v5, :cond_6

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v6, v3, :cond_2

    if-eq v6, v2, :cond_2

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_2
    :try_start_3
    invoke-direct {p0, v6}, Ljcifs/http/NtlmHttpURLConnection;->attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;

    move-result-object v6

    check-cast v6, Ljcifs/ntlmssp/Type3Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_3

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_3
    :try_start_4
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v8, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7, v6}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v6, v3, :cond_5

    if-eq v6, v2, :cond_5

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :try_start_5
    iget-boolean v6, p0, Ljava/net/HttpURLConnection;->allowUserInteraction:Z

    if-eqz v6, :cond_6

    if-ge v4, v5, :cond_6

    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->reconnect()V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to negotiate NTLM authentication."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    throw v1
.end method

.method private getHeaderFields0()Ljava/util/Map;
    .locals 6

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    return-object v0

    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v4, v3

    goto :goto_0
.end method

.method private handshake()V
    .locals 1

    iget-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->doHandshake()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    return-void
.end method

.method private parseResponseCode()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private reconnect()V
    .locals 5

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->allowUserInteraction:Z

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->doInput:Z

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-wide v1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->useCaches:Z

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 2
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->getHeaderFields0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljcifs/http/NtlmHttpURLConnection$CacheStream;

    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0, v2}, Ljcifs/http/NtlmHttpURLConnection$CacheStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->allowUserInteraction:Z

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->doInput:Z

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    iput-wide p1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->useCaches:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method

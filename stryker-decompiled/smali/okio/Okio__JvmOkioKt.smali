.class final synthetic Lokio/Okio__JvmOkioKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "okio.Okio"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/Okio__JvmOkioKt;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public static final synthetic access$getLogger$p()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lokio/Okio__JvmOkioKt;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static final appendingSink(Ljava/io/File;)Lokio/Sink;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final asResourceFileSystem(Ljava/lang/ClassLoader;)Lokio/FileSystem;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/internal/ResourceFileSystem;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lokio/internal/ResourceFileSystem;-><init>(Ljava/lang/ClassLoader;ZLokio/FileSystem;ILkotlin/jvm/internal/f;)V

    return-object v0
.end method

.method public static final cipherSink(Lokio/Sink;Ljavax/crypto/Cipher;)Lokio/CipherSink;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/CipherSink;

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lokio/CipherSink;-><init>(Lokio/BufferedSink;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public static final cipherSource(Lokio/Source;Ljavax/crypto/Cipher;)Lokio/CipherSource;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/CipherSource;

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lokio/CipherSource;-><init>(Lokio/BufferedSource;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public static final hashingSink(Lokio/Sink;Ljava/security/MessageDigest;)Lokio/HashingSink;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    invoke-direct {v0, p0, p1}, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static final hashingSink(Lokio/Sink;Ljavax/crypto/Mac;)Lokio/HashingSink;
    .locals 1

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mac"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSink;

    invoke-direct {v0, p0, p1}, Lokio/HashingSink;-><init>(Lokio/Sink;Ljavax/crypto/Mac;)V

    return-object v0
.end method

.method public static final hashingSource(Lokio/Source;Ljava/security/MessageDigest;)Lokio/HashingSource;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    invoke-direct {v0, p0, p1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static final hashingSource(Lokio/Source;Ljavax/crypto/Mac;)Lokio/HashingSource;
    .locals 1

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mac"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/HashingSource;

    invoke-direct {v0, p0, p1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljavax/crypto/Mac;)V

    return-object v0
.end method

.method public static final isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string v0, "getsockname failed"

    .line 20
    .line 21
    invoke-static {p0, v0, v1}, Lq5/h;->m1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_0
    return v1
.end method

.method public static final openZip(Lokio/FileSystem;Lokio/Path;)Lokio/FileSystem;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipPath"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, p0, v0, v1, v0}, Lokio/internal/ZipFilesKt;->openZip$default(Lokio/Path;Lokio/FileSystem;Lj5/l;ILjava/lang/Object;)Lokio/ZipFileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/File;)Lokio/Sink;
    .locals 3

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/File;Z)Lokio/Sink;
    .locals 1

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final sink(Ljava/io/OutputStream;)Lokio/Sink;
    .locals 2

    .line 3
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/OutputStreamSink;

    new-instance v1, Lokio/Timeout;

    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    invoke-direct {v0, p0, v1}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    return-object v0
.end method

.method public static final sink(Ljava/net/Socket;)Lokio/Sink;
    .locals 3

    .line 4
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/SocketAsyncTimeout;

    invoke-direct {v0, p0}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lokio/OutputStreamSink;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream(...)"

    invoke-static {p0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;
    .locals 1

    .line 5
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    const-string p1, "newOutputStream(...)"

    invoke-static {p0, p1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lokio/Okio;->sink(Ljava/io/File;Z)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static final source(Ljava/io/File;)Lokio/Source;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/InputStreamSource;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-direct {v0, v1, p0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    return-object v0
.end method

.method public static final source(Ljava/io/InputStream;)Lokio/Source;
    .locals 2

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/InputStreamSource;

    new-instance v1, Lokio/Timeout;

    invoke-direct {v1}, Lokio/Timeout;-><init>()V

    invoke-direct {v0, p0, v1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    return-object v0
.end method

.method public static final source(Ljava/net/Socket;)Lokio/Source;
    .locals 3

    .line 3
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/SocketAsyncTimeout;

    invoke-direct {v0, p0}, Lokio/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lokio/InputStreamSource;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream(...)"

    invoke-static {p0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;
    .locals 1

    .line 4
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    const-string p1, "newInputStream(...)"

    invoke-static {p0, p1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method

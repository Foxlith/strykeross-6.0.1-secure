.class public final Lcom/google/crypto/tink/BinaryKeysetWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/KeysetWriter;


# instance fields
.field private final closeStreamAfterReading:Z

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->outputStream:Ljava/io/OutputStream;

    iput-boolean p2, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->closeStreamAfterReading:Z

    return-void
.end method

.method public static withFile(Ljava/io/File;)Lcom/google/crypto/tink/KeysetWriter;
    .locals 2

    new-instance v0, Lcom/google/crypto/tink/BinaryKeysetWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/BinaryKeysetWriter;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method

.method public static withOutputStream(Ljava/io/OutputStream;)Lcom/google/crypto/tink/KeysetWriter;
    .locals 2

    new-instance v0, Lcom/google/crypto/tink/BinaryKeysetWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/BinaryKeysetWriter;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method


# virtual methods
.method public write(Lcom/google/crypto/tink/proto/EncryptedKeyset;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->closeStreamAfterReading:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iget-boolean v0, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->closeStreamAfterReading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw p1
.end method

.method public write(Lcom/google/crypto/tink/proto/Keyset;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->closeStreamAfterReading:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iget-boolean v0, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->closeStreamAfterReading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/BinaryKeysetWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw p1
.end method

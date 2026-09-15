.class public Lorg/bouncycastle/jcajce/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final oneByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->oneByte:[B

    iput-object p2, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :catch_1
    move-exception v0

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 20
    goto :goto_4

    .line 21
    :goto_1
    new-instance v1, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v2, "Error closing stream: "

    .line 24
    .line 25
    invoke-static {v2, v0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_2
    move-object v0, v1

    .line 33
    goto :goto_4

    .line 34
    :goto_3
    new-instance v1, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    .line 35
    .line 36
    const-string v2, "Error during cipher finalisation"

    .line 37
    .line 38
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_4
    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->flush()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 48
    .line 49
    .line 50
    goto :goto_5

    .line 51
    :catch_2
    move-exception v1

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    move-object v0, v1

    .line 55
    :cond_1
    :goto_5
    if-nez v0, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    throw v0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->oneByte:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

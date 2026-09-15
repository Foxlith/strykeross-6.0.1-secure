.class public Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dekAlgName:Ljava/lang/String;

.field private final iv:[B

.field private final keyBytes:[B

.field private final parser:Lorg/bouncycastle/openssl/PEMKeyPairParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[BLorg/bouncycastle/openssl/PEMKeyPairParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->dekAlgName:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->iv:[B

    iput-object p3, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->keyBytes:[B

    iput-object p4, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->parser:Lorg/bouncycastle/openssl/PEMKeyPairParser;

    return-void
.end method


# virtual methods
.method public decryptKeyPair(Lorg/bouncycastle/openssl/PEMDecryptorProvider;)Lorg/bouncycastle/openssl/PEMKeyPair;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->dekAlgName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lorg/bouncycastle/openssl/PEMDecryptorProvider;->get(Ljava/lang/String;)Lorg/bouncycastle/openssl/PEMDecryptor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->parser:Lorg/bouncycastle/openssl/PEMKeyPairParser;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->keyBytes:[B

    .line 10
    .line 11
    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->iv:[B

    .line 12
    .line 13
    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/openssl/PEMDecryptor;->decrypt([B[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Lorg/bouncycastle/openssl/PEMKeyPairParser;->parse([B)Lorg/bouncycastle/openssl/PEMKeyPair;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :catch_2
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :goto_0
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "exception processing key pair: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :goto_1
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "cannot create extraction operator: "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :goto_2
    throw p1
.end method

.method public getDekAlgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->dekAlgName:Ljava/lang/String;

    return-object v0
.end method

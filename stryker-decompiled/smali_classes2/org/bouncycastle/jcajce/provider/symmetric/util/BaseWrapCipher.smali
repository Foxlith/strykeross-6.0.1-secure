.class public abstract Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;,
        Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private forWrapping:Z

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private iv:[B

.field private ivSize:I

.field protected pbeHash:I

.field protected pbeIvSize:I

.field protected pbeKeySize:I

.field protected pbeType:I

.field protected wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

.field private wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-class v4, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-class v4, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    iput v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeType:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeHash:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Wrapper;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/Wrapper;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Wrapper;I)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-class v4, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-class v4, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    iput v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeType:I

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->pbeHash:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    return-void
.end method


# virtual methods
.method public final createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p1

    return-object p1
.end method

.method public engineDoFinal([BII[BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :try_start_0
    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->getBuf()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->getBuf()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1
    :try_end_3
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    array-length p3, p1

    add-int/2addr p3, p5

    array-length v0, p4

    if-gt p3, v0, :cond_1

    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->erase()V

    return p1

    :cond_1
    :try_start_5
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->erase()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoFinal([BII)[B
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->getBuf()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->erase()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->getBuf()[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-interface {p1, p3, p2, v0}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1
    :try_end_3
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_4
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;->erase()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public engineGetOutputSize(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->availableSpecs:[Ljava/lang/Class;

    invoke-static {p3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;->extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "can\'t handle parameter "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .line 3
    instance-of v0, p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "PBE requires PBE parameters to be set."

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object p2, v0

    :goto_0
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, p2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object p2, v1

    :cond_3
    instance-of v0, p3, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    if-eqz v0, :cond_5

    check-cast p3, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;->getSBox()[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-direct {v1, p2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object p2, v1

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithUKM;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;->getUKM()[B

    move-result-object p3

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object p2, v0

    :cond_5
    instance-of p3, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p3, :cond_7

    iget p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ivSize:I

    if-eqz p3, :cond_7

    if-eq p1, v0, :cond_6

    if-ne p1, v1, :cond_7

    :cond_6
    new-array p3, p3, [B

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {p3, p2, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object p2, p3

    :cond_7
    if-eqz p4, :cond_8

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {p3, p2, p4}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object p2, p3

    :cond_8
    if-eq p1, v1, :cond_c

    const/4 p3, 0x2

    const/4 p4, 0x0

    if-eq p1, p3, :cond_b

    const/4 p3, 0x0

    if-eq p1, v0, :cond_a

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    invoke-interface {p1, p4, p2}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    :goto_1
    iput-boolean p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Unknown mode parameter passed to init."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    invoke-interface {p1, v1, p2}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    :goto_2
    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->forWrapping:Z

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    invoke-interface {p1, p4, p2}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    invoke-interface {p1, v1, p2}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 2
    .line 3
    const-string v1, "can\'t support mode "

    .line 4
    .line 5
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    .line 2
    .line 3
    const-string v1, "Padding "

    .line 4
    .line 5
    const-string v2, " unknown."

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 5

    .line 1
    const-string v0, "Unknown key type "

    .line 2
    .line 3
    const-string v1, "algorithm "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    invoke-virtual {p0, p1, v3, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :catch_1
    move-exception p1

    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :catch_2
    move-exception p1

    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    array-length v4, p1

    .line 26
    invoke-interface {v2, p1, v3, v4}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    const/4 v2, 0x3

    .line 31
    if-ne p3, v2, :cond_1

    .line 32
    .line 33
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p3

    .line 39
    :cond_1
    const-string v2, ""

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    if-ne p3, v3, :cond_3

    .line 49
    .line 50
    :try_start_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_2
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 62
    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " not supported"

    .line 80
    .line 81
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 92
    :catch_3
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 93
    .line 94
    const-string p2, "Invalid key encoding."

    .line 95
    .line 96
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_3
    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 101
    .line 102
    invoke-interface {v1, p2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const/4 v1, 0x1

    .line 107
    if-ne p3, v1, :cond_4

    .line 108
    .line 109
    new-instance p3, Ljava/security/spec/X509EncodedKeySpec;

    .line 110
    .line 111
    invoke-direct {p3, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :catch_4
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :catch_5
    move-exception p1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    if-ne p3, v3, :cond_5

    .line 124
    .line 125
    new-instance p3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 126
    .line 127
    invoke-direct {p3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 131
    .line 132
    .line 133
    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_4

    .line 134
    return-object p1

    .line 135
    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 136
    .line 137
    invoke-static {v0, p3}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :goto_1
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 146
    .line 147
    new-instance p3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p2

    .line 167
    :goto_2
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 168
    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p2

    .line 189
    :goto_3
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p2

    .line 199
    :goto_4
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p2

    .line 209
    :goto_5
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p2
.end method

.method public engineUpdate([BII[BI)I
    .locals 0

    .line 1
    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII)[B
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapStream:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$ErasableOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .locals 3

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Cannot wrap key, null encoding."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

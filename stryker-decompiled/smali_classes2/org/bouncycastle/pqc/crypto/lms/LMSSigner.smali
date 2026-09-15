.class public Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;[B)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getEncoded()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "unable to encode signature: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    :goto_0
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    .line 2
    .line 3
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {v0, p2, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;[B)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "unable to decode signature: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p2
.end method

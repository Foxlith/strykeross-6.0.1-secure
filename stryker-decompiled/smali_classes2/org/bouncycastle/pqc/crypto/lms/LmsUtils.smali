.class Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArray([BIILorg/bouncycastle/crypto/Digest;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public static byteArray([BLorg/bouncycastle/crypto/Digest;)V
    .locals 2

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public static calculateStrength(Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result p0

    mul-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "lmsParameters cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u16str(SLorg/bouncycastle/crypto/Digest;)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public static u32str(ILorg/bouncycastle/crypto/Digest;)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

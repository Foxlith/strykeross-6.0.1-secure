.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$KeyGeneratorSHA3;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGeneratorSHA3"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const-string v0, "HMACSHA3-"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

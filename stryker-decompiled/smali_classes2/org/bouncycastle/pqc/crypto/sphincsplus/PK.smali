.class Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final root:[B

.field final seed:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    return-void
.end method

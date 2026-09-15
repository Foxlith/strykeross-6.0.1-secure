.class Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final digest:[B

.field final idx_leaf:I

.field final idx_tree:J


# direct methods
.method public constructor <init>(JI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_tree:J

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_leaf:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->digest:[B

    return-void
.end method

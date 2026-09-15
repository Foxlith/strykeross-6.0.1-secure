.class Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XYZ"
.end annotation


# instance fields
.field final x:[J

.field final y:[J

.field final z:[J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/16 v0, 0xa

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>([J[J[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>()V

    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v0, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    return-void
.end method

.method public constructor <init>([J[J[J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iput-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iput-object p3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    return-void
.end method

.method public static fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .locals 3

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v0, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    return-object p0
.end method


# virtual methods
.method public isOnCurve()Z
    .locals 6

    const/16 v0, 0xa

    new-array v1, v0, [J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    new-array v2, v0, [J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    new-array v3, v0, [J

    iget-object v4, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v3, v4}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    new-array v4, v0, [J

    invoke-static {v4, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    new-array v5, v0, [J

    invoke-static {v5, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    invoke-static {v5, v5, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    new-array v0, v0, [J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    sget-object v1, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D:[J

    invoke-static {v0, v0, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    invoke-static {v0, v4}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J)V

    invoke-static {v0, v0}, Lcom/google/crypto/tink/subtle/Field25519;->reduce([J[J)V

    invoke-static {v5}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v0

    return v0
.end method

.method public toBytes()[B
    .locals 4

    const/16 v0, 0xa

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Field25519;->inverse([J[J)V

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v2, v3, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v0, v3, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v0

    const/16 v1, 0x1f

    aget-byte v3, v0, v1

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Ed25519;->access$000([J)I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.class Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;
.super Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private position:I

.field final synthetic val$bytes:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->val$bytes:[B

    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->val$offset:I

    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->val$length:I

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->val$bytes:[B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->val$offset:I

    return v0
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasNioBuffer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public limit()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->val$length:I

    return v0
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->position:I

    return v0
.end method

.method public position(I)Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->val$length:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->position:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position: "

    .line 2
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remaining()I
    .locals 2

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->val$length:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer$2;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

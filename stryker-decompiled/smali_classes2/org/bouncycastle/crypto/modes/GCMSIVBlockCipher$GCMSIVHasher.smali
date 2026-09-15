.class Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GCMSIVHasher"
.end annotation


# instance fields
.field private numActive:I

.field private numHashed:J

.field private final theBuffer:[B

.field private final theByte:[B

.field final synthetic this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theByte:[B

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)V

    return-void
.end method


# virtual methods
.method public completeHash()V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$200([BII[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$300(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    :cond_0
    return-void
.end method

.method public getBytesProcessed()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    return-void
.end method

.method public updateHash(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    return-void
.end method

.method public updateHash([BII)V
    .locals 6

    .line 2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    rsub-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-lt p3, v1, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    invoke-static {p1, p2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v4

    invoke-static {v0, v3, v2, v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$200([BII[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v4

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$300(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    sub-int v0, p3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    move v3, v1

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    if-lt v0, v2, :cond_1

    add-int v4, p2, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v5}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v5

    invoke-static {p1, v4, v2, v5}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$200([BII[B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$300(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    add-int/2addr v3, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    add-int/2addr p2, v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    :cond_2
    iget-wide p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    return-void
.end method

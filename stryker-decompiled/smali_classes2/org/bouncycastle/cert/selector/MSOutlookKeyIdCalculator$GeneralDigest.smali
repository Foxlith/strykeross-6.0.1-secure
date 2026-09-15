.class abstract Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GeneralDigest"
.end annotation


# static fields
.field private static final BYTE_LENGTH:I = 0x40


# instance fields
.field private byteCount:J

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->copyIn(Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V

    return-void
.end method


# virtual methods
.method public copyIn(Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V
    .locals 4

    iget-object v0, p1, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    iget-wide v0, p1, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    return-void
.end method

.method public finish()V
    .locals 3

    iget-wide v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    :goto_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    iget v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processLength(J)V

    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processBlock()V

    return-void
.end method

.method public abstract processBlock()V
.end method

.method public abstract processLength(J)V
.end method

.method public abstract processWord([BI)V
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processWord([BI)V

    iput p1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    return-void
.end method

.method public update([BII)V
    .locals 5

    .line 2
    :goto_0
    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processWord([BI)V

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p3, :cond_2

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.class public Lorg/bouncycastle/mime/CanonicalOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field protected static newline:[B


# instance fields
.field private final is7Bit:Z

.field protected lastb:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/smime/SMimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p3, -0x1

    iput p3, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->lastb:I

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "binary"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->is7Bit:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/mime/smime/SMimeParserContext;->getDefaultContentTransferEncoding()Ljava/lang/String;

    move-result-object p1

    const-string p2, "7bit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->is7Bit:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->lastb:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    :goto_0
    iput p1, p0, Lorg/bouncycastle/mime/CanonicalOutputStream;->lastb:I

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/mime/CanonicalOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 3
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-eq v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/mime/CanonicalOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeln()V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/bouncycastle/mime/CanonicalOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

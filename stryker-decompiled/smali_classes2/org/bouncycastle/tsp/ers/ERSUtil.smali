.class Lorg/bouncycastle/tsp/ers/ERSUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hashComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/tsp/ers/ByteArrayComparator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/ByteArrayComparator;-><init>()V

    sput-object v0, Lorg/bouncycastle/tsp/ers/ERSUtil;->hashComp:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHashList(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/operator/DigestCalculator;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/tsp/ers/SortedHashList;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSData;

    invoke-interface {v2, p0}, Lorg/bouncycastle/tsp/ers/ERSData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/tsp/ers/SortedHashList;->add([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static buildHashList([[B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/bouncycastle/tsp/ers/SortedHashList;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/tsp/ers/SortedHashList;->add([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/SortedHashList;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/tsp/ers/ERSUtil;->hashComp:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p2, p1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[[B)[B
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->buildHashList([[B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/Iterator;)[B

    move-result-object p0

    return-object p0
.end method

.method public static calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/io/InputStream;)[B
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unable to calculate hash: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1, p0}, Lorg/bouncycastle/tsp/ers/ExpUtil;->createIllegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/Iterator;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/operator/DigestCalculator;",
            "Ljava/util/Iterator<",
            "[B>;)[B"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unable to calculate hash: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1, p0}, Lorg/bouncycastle/tsp/ers/ExpUtil;->createIllegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unable to calculate hash: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p0, p1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1, p0}, Lorg/bouncycastle/tsp/ers/ExpUtil;->createIllegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unable to calculate hash: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1, p0}, Lorg/bouncycastle/tsp/ers/ExpUtil;->createIllegalState(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValues()[[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->buildHashList([[B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/Iterator;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, p1, p0

    return-object p0
.end method

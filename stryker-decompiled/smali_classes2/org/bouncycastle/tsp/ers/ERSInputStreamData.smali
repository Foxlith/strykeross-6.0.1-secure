.class public Lorg/bouncycastle/tsp/ers/ERSInputStreamData;
.super Lorg/bouncycastle/tsp/ers/ERSCachingData;
.source "SourceFile"


# instance fields
.field private final content:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "directory not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public calculateHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSInputStreamData;->content:Ljava/io/InputStream;

    invoke-static {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

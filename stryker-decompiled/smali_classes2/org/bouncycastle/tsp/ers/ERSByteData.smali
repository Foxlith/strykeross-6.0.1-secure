.class public Lorg/bouncycastle/tsp/ers/ERSByteData;
.super Lorg/bouncycastle/tsp/ers/ERSCachingData;
.source "SourceFile"


# instance fields
.field private final content:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSCachingData;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSByteData;->content:[B

    return-void
.end method


# virtual methods
.method public calculateHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSByteData;->content:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object p1

    return-object p1
.end method

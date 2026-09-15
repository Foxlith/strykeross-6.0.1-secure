.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final authPath:[[B

.field final sk:[B


# direct methods
.method public constructor <init>([B[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    return-void
.end method


# virtual methods
.method public getAuthPath()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    return-object v0
.end method

.method public getSK()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    return-object v0
.end method

.class Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DigestOutputStream"
.end annotation


# instance fields
.field private dig:Ljava/security/MessageDigest;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;Ljava/security/MessageDigest;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;->this$0:Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

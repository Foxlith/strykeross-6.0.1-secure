.class Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AADStream"
.end annotation


# instance fields
.field private cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processAADByte(B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    return-void
.end method

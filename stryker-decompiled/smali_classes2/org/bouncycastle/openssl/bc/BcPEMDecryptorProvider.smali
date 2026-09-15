.class public Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/openssl/PEMDecryptorProvider;


# instance fields
.field private final password:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;->password:[C

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;)[C
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;->password:[C

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/bouncycastle/openssl/PEMDecryptor;
    .locals 1

    new-instance v0, Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider$1;-><init>(Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;Ljava/lang/String;)V

    return-object v0
.end method

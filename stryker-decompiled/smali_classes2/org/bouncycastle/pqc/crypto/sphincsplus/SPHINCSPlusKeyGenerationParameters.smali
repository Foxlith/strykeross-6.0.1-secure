.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "SourceFile"


# instance fields
.field private final parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyGenerationParameters;->parameters:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    return-object v0
.end method

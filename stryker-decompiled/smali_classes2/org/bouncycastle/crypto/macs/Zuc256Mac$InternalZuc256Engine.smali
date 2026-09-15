.class Lorg/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;
.super Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/macs/Zuc256Mac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalZuc256Engine"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createKeyStreamWord()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->makeKeyStreamWord()I

    move-result v0

    return v0
.end method

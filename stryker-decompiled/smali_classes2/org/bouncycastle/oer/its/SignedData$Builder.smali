.class public Lorg/bouncycastle/oer/its/SignedData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/SignedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private hashId:Lorg/bouncycastle/oer/its/HashAlgorithm;

.field private signature:Lorg/bouncycastle/oer/its/Signature;

.field private signer:Lorg/bouncycastle/oer/its/SignerIdentifier;

.field private tbsData:Lorg/bouncycastle/oer/its/ToBeSignedData;

.field final synthetic this$0:Lorg/bouncycastle/oer/its/SignedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/SignedData;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->this$0:Lorg/bouncycastle/oer/its/SignedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/oer/its/SignedData;
    .locals 5

    new-instance v0, Lorg/bouncycastle/oer/its/SignedData;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->hashId:Lorg/bouncycastle/oer/its/HashAlgorithm;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->tbsData:Lorg/bouncycastle/oer/its/ToBeSignedData;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->signer:Lorg/bouncycastle/oer/its/SignerIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->signature:Lorg/bouncycastle/oer/its/Signature;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/SignedData;-><init>(Lorg/bouncycastle/oer/its/HashAlgorithm;Lorg/bouncycastle/oer/its/ToBeSignedData;Lorg/bouncycastle/oer/its/SignerIdentifier;Lorg/bouncycastle/oer/its/Signature;)V

    return-object v0
.end method

.method public setHashId(Lorg/bouncycastle/oer/its/HashAlgorithm;)Lorg/bouncycastle/oer/its/SignedData$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->hashId:Lorg/bouncycastle/oer/its/HashAlgorithm;

    return-object p0
.end method

.method public setSignature(Lorg/bouncycastle/oer/its/Signature;)Lorg/bouncycastle/oer/its/SignedData$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->signature:Lorg/bouncycastle/oer/its/Signature;

    return-object p0
.end method

.method public setSigner(Lorg/bouncycastle/oer/its/SignerIdentifier;)Lorg/bouncycastle/oer/its/SignedData$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->signer:Lorg/bouncycastle/oer/its/SignerIdentifier;

    return-object p0
.end method

.method public setTbsData(Lorg/bouncycastle/oer/its/ToBeSignedData;)Lorg/bouncycastle/oer/its/SignedData$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedData$Builder;->tbsData:Lorg/bouncycastle/oer/its/ToBeSignedData;

    return-object p0
.end method

.class public Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ToBeSignedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private headerInfo:Lorg/bouncycastle/oer/its/HeaderInfo;

.field private payload:Lorg/bouncycastle/oer/its/SignedDataPayload;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createToBeSignedData()Lorg/bouncycastle/oer/its/ToBeSignedData;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/ToBeSignedData;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;->payload:Lorg/bouncycastle/oer/its/SignedDataPayload;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;->headerInfo:Lorg/bouncycastle/oer/its/HeaderInfo;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ToBeSignedData;-><init>(Lorg/bouncycastle/oer/its/SignedDataPayload;Lorg/bouncycastle/oer/its/HeaderInfo;)V

    return-object v0
.end method

.method public setHeaderInfo(Lorg/bouncycastle/oer/its/HeaderInfo;)Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;->headerInfo:Lorg/bouncycastle/oer/its/HeaderInfo;

    return-object p0
.end method

.method public setPayload(Lorg/bouncycastle/oer/its/SignedDataPayload;)Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;->payload:Lorg/bouncycastle/oer/its/SignedDataPayload;

    return-object p0
.end method

.class public Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/SignedDataPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private data:Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

.field private extDataHash:Lorg/bouncycastle/oer/its/HashedData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/oer/its/SignedDataPayload;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/SignedDataPayload;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;->data:Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;->extDataHash:Lorg/bouncycastle/oer/its/HashedData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/SignedDataPayload;-><init>(Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;Lorg/bouncycastle/oer/its/HashedData;)V

    return-object v0
.end method

.method public setData(Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;)Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;->data:Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    return-object p0
.end method

.method public setExtDataHash(Lorg/bouncycastle/oer/its/HashedData;)Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;->extDataHash:Lorg/bouncycastle/oer/its/HashedData;

    return-object p0
.end method

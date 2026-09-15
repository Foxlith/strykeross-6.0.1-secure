.class public Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private content:Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

.field private protocolVersion:Lorg/bouncycastle/oer/its/Uint8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;->protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;-><init>(Lorg/bouncycastle/oer/its/Uint8;Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;)V

    return-object v0
.end method

.method public setContent(Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;->content:Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

    return-object p0
.end method

.method public setProtocolVersion(Lorg/bouncycastle/oer/its/Uint8;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;->protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

    return-object p0
.end method

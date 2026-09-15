.class public Lorg/bouncycastle/oer/its/TwoDLocation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/TwoDLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private latitude:Lorg/bouncycastle/oer/its/Latitude;

.field private longitude:Lorg/bouncycastle/oer/its/Longitude;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTwoDLocation()Lorg/bouncycastle/oer/its/TwoDLocation;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/TwoDLocation;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/TwoDLocation$Builder;->latitude:Lorg/bouncycastle/oer/its/Latitude;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/TwoDLocation$Builder;->longitude:Lorg/bouncycastle/oer/its/Longitude;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/TwoDLocation;-><init>(Lorg/bouncycastle/oer/its/Latitude;Lorg/bouncycastle/oer/its/Longitude;)V

    return-object v0
.end method

.method public setLatitude(Lorg/bouncycastle/oer/its/Latitude;)Lorg/bouncycastle/oer/its/TwoDLocation$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/TwoDLocation$Builder;->latitude:Lorg/bouncycastle/oer/its/Latitude;

    return-object p0
.end method

.method public setLongitude(Lorg/bouncycastle/oer/its/Longitude;)Lorg/bouncycastle/oer/its/TwoDLocation$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/TwoDLocation$Builder;->longitude:Lorg/bouncycastle/oer/its/Longitude;

    return-object p0
.end method

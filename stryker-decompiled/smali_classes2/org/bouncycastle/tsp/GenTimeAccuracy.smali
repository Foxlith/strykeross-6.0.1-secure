.class public Lorg/bouncycastle/tsp/GenTimeAccuracy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/Accuracy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    return-void
.end method

.method private format(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    const-string v0, "00"

    .line 6
    .line 7
    :goto_0
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/16 v0, 0x64

    .line 13
    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    const-string v0, "0"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private getTimeComponent(Lorg/bouncycastle/asn1/ASN1Integer;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getMicros()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/Accuracy;->getMicros()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/bouncycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public getMillis()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/Accuracy;->getMillis()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/bouncycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/Accuracy;->getSeconds()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/bouncycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getMillis()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getMicros()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

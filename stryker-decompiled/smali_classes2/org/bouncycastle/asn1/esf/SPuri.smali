.class public Lorg/bouncycastle/asn1/esf/SPuri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private uri:Lorg/bouncycastle/asn1/ASN1IA5String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1IA5String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SPuri;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/SPuri;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/esf/SPuri;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/SPuri;-><init>(Lorg/bouncycastle/asn1/ASN1IA5String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getUri()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    :goto_1
    return-object v0
.end method

.method public getUriIA5()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

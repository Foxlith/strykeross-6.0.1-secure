.class public Lorg/bouncycastle/oer/its/SubjectAssurance;
.super Lorg/bouncycastle/asn1/DEROctetString;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SubjectAssurance;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SubjectAssurance;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SubjectAssurance;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/its/SubjectAssurance;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/SubjectAssurance;-><init>([B)V

    return-object v0
.end method

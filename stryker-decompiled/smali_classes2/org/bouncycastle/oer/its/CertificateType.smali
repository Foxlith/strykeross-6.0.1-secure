.class public Lorg/bouncycastle/oer/its/CertificateType;
.super Lorg/bouncycastle/asn1/ASN1Enumerated;
.source "SourceFile"


# static fields
.field public static final Explicit:Lorg/bouncycastle/oer/its/CertificateType;

.field public static final Implicit:Lorg/bouncycastle/oer/its/CertificateType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/CertificateType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/CertificateType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/CertificateType;->Explicit:Lorg/bouncycastle/oer/its/CertificateType;

    new-instance v0, Lorg/bouncycastle/oer/its/CertificateType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/CertificateType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/CertificateType;->Implicit:Lorg/bouncycastle/oer/its/CertificateType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CertificateType;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/CertificateType;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/CertificateType;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/oer/its/CertificateType;->Implicit:Lorg/bouncycastle/oer/its/CertificateType;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unaccounted enum value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object p0, Lorg/bouncycastle/oer/its/CertificateType;->Explicit:Lorg/bouncycastle/oer/its/CertificateType;

    return-object p0
.end method

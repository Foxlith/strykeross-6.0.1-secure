.class public Lorg/bouncycastle/oer/its/PduFunctionType;
.super Lorg/bouncycastle/asn1/ASN1Integer;
.source "SourceFile"


# static fields
.field public static final iso21177ExtendedAuth:Lorg/bouncycastle/oer/its/PduFunctionType;

.field public static final tlsHandshake:Lorg/bouncycastle/oer/its/PduFunctionType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/PduFunctionType;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/PduFunctionType;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/PduFunctionType;->tlsHandshake:Lorg/bouncycastle/oer/its/PduFunctionType;

    new-instance v0, Lorg/bouncycastle/oer/its/PduFunctionType;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/PduFunctionType;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/oer/its/PduFunctionType;->iso21177ExtendedAuth:Lorg/bouncycastle/oer/its/PduFunctionType;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PduFunctionType;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/PduFunctionType;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/PduFunctionType;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/PduFunctionType;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/PduFunctionType;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/PduFunctionType;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PduFunctionType;

    move-result-object p0

    return-object p0
.end method

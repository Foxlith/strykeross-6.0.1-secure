.class public Lorg/bouncycastle/oer/its/Hostname;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final hostName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Hostname;->hostName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Hostname;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/Hostname;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/Hostname;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/Hostname;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/Hostname;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/oer/its/Hostname;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/Hostname;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hostname accepts Hostname, String and ASN1String"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/Hostname;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

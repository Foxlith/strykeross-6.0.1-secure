.class public Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private choice:I

.field private object:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

    iget v1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public encryptedData(Lorg/bouncycastle/oer/its/EncryptedData;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 p1, 0x2

    iput p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->choice:I

    return-object p0
.end method

.method public extension([B)Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->choice:I

    return-object p0
.end method

.method public setChoice(I)Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->choice:I

    return-object p0
.end method

.method public setObject(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public signedCertificateRequest(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 p1, 0x3

    iput p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->choice:I

    return-object p0
.end method

.method public signedData(Lorg/bouncycastle/oer/its/SignedData;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 p1, 0x1

    iput p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->choice:I

    return-object p0
.end method

.method public unsecuredData(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content$Builder;->choice:I

    return-object p0
.end method

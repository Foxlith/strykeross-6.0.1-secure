.class public Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/SignerIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private choice:I

.field private encodable:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/oer/its/SignerIdentifier;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/SignerIdentifier;

    iget v1, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/SignerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public certificate(Lorg/bouncycastle/oer/its/SequenceOfCertificate;)Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public digest(Lorg/bouncycastle/oer/its/HashedId$HashedId8;)Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public extension([B)Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->choice:I

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public self()Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->choice:I

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public setChoice(I)Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->choice:I

    return-object p0
.end method

.method public setEncodable(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignerIdentifier$Builder;->encodable:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

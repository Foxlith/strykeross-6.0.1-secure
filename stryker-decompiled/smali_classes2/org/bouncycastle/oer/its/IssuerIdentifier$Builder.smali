.class public Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/IssuerIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public choice:I

.field public value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIssuerIdentifier()Lorg/bouncycastle/oer/its/IssuerIdentifier;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/IssuerIdentifier;

    iget v1, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/IssuerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public extension([B)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->choice:I

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public self(Lorg/bouncycastle/oer/its/HashAlgorithm;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public setChoice(I)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->choice:I

    return-object p0
.end method

.method public setValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public sha256AndDigest(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public sha384AndDigest(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

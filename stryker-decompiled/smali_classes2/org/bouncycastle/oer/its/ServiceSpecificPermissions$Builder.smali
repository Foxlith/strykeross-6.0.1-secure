.class public Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;
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
.method public bitmapSsp(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->setObject(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public createServiceSpecificPermissions()Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    iget v1, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public extension([B)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->setObject(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public opaque()Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setChoice(I)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->choice:I

    return-object p0
.end method

.method public setObject(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

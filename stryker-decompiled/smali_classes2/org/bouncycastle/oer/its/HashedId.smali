.class public Lorg/bouncycastle/oer/its/HashedId;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/HashedId$HashedId10;,
        Lorg/bouncycastle/oer/its/HashedId$HashedId3;,
        Lorg/bouncycastle/oer/its/HashedId$HashedId32;,
        Lorg/bouncycastle/oer/its/HashedId$HashedId8;
    }
.end annotation


# instance fields
.field private final string:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/HashedId;->string:[B

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashedId;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/HashedId;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/HashedId;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/HashedId$HashedId32;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/HashedId$HashedId32;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hash id of unsupported length, length was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/oer/its/HashedId$HashedId10;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/HashedId$HashedId10;-><init>([B)V

    return-object v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/oer/its/HashedId$HashedId8;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/HashedId$HashedId8;-><init>([B)V

    return-object v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/oer/its/HashedId$HashedId3;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/HashedId$HashedId3;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/HashedId;->string:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

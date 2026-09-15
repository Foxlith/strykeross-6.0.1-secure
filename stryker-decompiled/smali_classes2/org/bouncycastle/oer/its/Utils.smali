.class Lorg/bouncycastle/oer/its/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillList(Ljava/lang/Class;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/bouncycastle/asn1/ASN1Sequence;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/oer/its/Utils$1;

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/oer/its/Utils$1;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static octetStringFixed([B)[B
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "octet string out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static octetStringFixed([BI)[B
    .locals 1

    .line 2
    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "octet string out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toSequence(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast p0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static varargs toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

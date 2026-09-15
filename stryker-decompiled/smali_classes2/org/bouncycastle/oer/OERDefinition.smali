.class public Lorg/bouncycastle/oer/OERDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/OERDefinition$BaseType;,
        Lorg/bouncycastle/oer/OERDefinition$Builder;,
        Lorg/bouncycastle/oer/OERDefinition$Element;,
        Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;,
        Lorg/bouncycastle/oer/OERDefinition$OptionalList;
    }
.end annotation


# static fields
.field private static final sIntRange:[[Ljava/math/BigInteger;

.field private static final uIntMax:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "256"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "65536"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "4294967296"

    invoke-direct {v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v6, "18446744073709551616"

    invoke-direct {v2, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/bouncycastle/oer/OERDefinition;->uIntMax:[Ljava/math/BigInteger;

    new-array v0, v0, [[Ljava/math/BigInteger;

    new-array v1, v5, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v7, "-128"

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/math/BigInteger;

    const-string v7, "127"

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v7, "-32768"

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/math/BigInteger;

    const-string v7, "32767"

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v7, "-2147483648"

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/math/BigInteger;

    const-string v7, "2147483647"

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "-9223372036854775808"

    invoke-direct {v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "9223372036854775807"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition;->sIntRange:[[Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()[Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/OERDefinition;->uIntMax:[Ljava/math/BigInteger;

    return-object v0
.end method

.method public static synthetic access$100()[[Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/OERDefinition;->sIntRange:[[Ljava/math/BigInteger;

    return-object v0
.end method

.method public static bitString(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->fixedSize(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static enumItem(Ljava/lang/String;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static extension()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    const-string v1, "extension"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static integer()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static integer(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 3
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static integer(JJLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 6

    .line 4
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(JJLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static integer(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 5
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static octets()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->unbounded()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    .line 2
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->fixedSize(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static octets(II)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    .line 3
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static opaque()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->unbounded()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static varargs optional([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$OptionalList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static placeholder()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static seq()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static varargs seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static utf8String()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    return-object v0
.end method

.method public static utf8String(I)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    .line 2
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static utf8String(II)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    .line 3
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

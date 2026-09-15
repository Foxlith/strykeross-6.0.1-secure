.class public abstract Lorg/bouncycastle/asn1/ASN1VideotexString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final contents:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1VideotexString$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1VideotexString;

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1VideotexString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1VideotexString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->contents:[B

    return-void
.end method

.method public static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1VideotexString;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DERVideotexString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/DERVideotexString;-><init>([BZ)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1VideotexString;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1VideotexString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1VideotexString;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1VideotexString;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1VideotexString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1VideotexString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding error in getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v1}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    .line 3
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1VideotexString;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1VideotexString;
    .locals 1

    .line 11
    sget-object v0, Lorg/bouncycastle/asn1/ASN1VideotexString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1VideotexString;

    return-object p0
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1VideotexString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1VideotexString;

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->contents:[B

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1VideotexString;->contents:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public final encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2

    const/16 v0, 0x15

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method public final encodeConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final encodedLength(Z)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public final getOctets()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

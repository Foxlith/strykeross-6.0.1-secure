.class public Lorg/bouncycastle/asn1/ASN1Boolean;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"


# static fields
.field public static final FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:B = 0x0t

.field public static final TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:B = -0x1t

.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1Boolean;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Boolean$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-byte p1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:B

    return-void
.end method

.method public static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    return-object v0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(I)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    .line 4
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 1

    .line 12
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method

.method public static getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 0

    .line 13
    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZIB)V

    return-void
.end method

.method public encodeConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public encodedLength(Z)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public isTrue()Z
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method

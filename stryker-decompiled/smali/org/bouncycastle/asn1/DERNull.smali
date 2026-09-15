.class public Lorg/bouncycastle/asn1/DERNull;
.super Lorg/bouncycastle/asn1/ASN1Null;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/DERNull;

.field private static final zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Null;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2

    const/4 v0, 0x5

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->zeroBytes:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method public encodeConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public encodedLength(Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

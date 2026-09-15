.class public Lorg/bouncycastle/asn1/misc/NetscapeCertType;
.super Lorg/bouncycastle/asn1/DERBitString;
.source "SourceFile"


# static fields
.field public static final objectSigning:I = 0x10

.field public static final objectSigningCA:I = 0x1

.field public static final reserved:I = 0x8

.field public static final smime:I = 0x20

.field public static final smimeCA:I = 0x2

.field public static final sslCA:I = 0x4

.field public static final sslClient:I = 0x80

.field public static final sslServer:I = 0x40


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetscapeCertType: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

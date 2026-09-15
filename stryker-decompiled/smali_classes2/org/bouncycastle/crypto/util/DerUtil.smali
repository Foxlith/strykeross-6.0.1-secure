.class Lorg/bouncycastle/crypto/util/DerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public static toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lorg/bouncycastle/crypto/util/DerUtil$1;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Cannot get encoding: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/crypto/util/DerUtil$1;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

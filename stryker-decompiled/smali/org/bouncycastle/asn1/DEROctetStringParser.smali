.class public Lorg/bouncycastle/asn1/DEROctetStringParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DEROctetStringParser;->stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DEROctetStringParser;->stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DEROctetStringParser;->stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DEROctetStringParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "IOException converting stream to byte array: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.class public Lorg/bouncycastle/asn1/BERSetParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1SetParser;


# instance fields
.field private _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERSetParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method

.method public static parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERSet;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERSetParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {v0}, Lorg/bouncycastle/asn1/BERSetParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERSet;

    move-result-object v0

    return-object v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERSetParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.class public Lorg/bouncycastle/dvcs/SignedDVCSMessageGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final signedDataGen:Lorg/bouncycastle/cms/CMSSignedDataGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedDataGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/dvcs/SignedDVCSMessageGenerator;->signedDataGen:Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/dvcs/DVCSMessage;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/dvcs/DVCSMessage;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/dvcs/SignedDVCSMessageGenerator;->signedDataGen:Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    new-instance v2, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p1}, Lorg/bouncycastle/dvcs/DVCSMessage;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSException;

    const-string v1, "Could not encode DVCS request"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSException;

    const-string v1, "Could not sign DVCS request"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.class public Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    return-void
.end method

.method private addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v2, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    invoke-virtual {v0, v2, p1}, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSEncryptedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSIOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public addData(Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v4, Lorg/bouncycastle/asn1/DLSequence;

    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p2}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;[Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 3

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;[C)Lorg/bouncycastle/pkcs/PKCS12PfxPdu;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/DLSequence;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    .line 17
    .line 18
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    .line 20
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance v2, Lorg/bouncycastle/pkcs/MacDataGenerator;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Lorg/bouncycastle/pkcs/MacDataGenerator;-><init>(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p2, v0}, Lorg/bouncycastle/pkcs/MacDataGenerator;->build([C[B)Lorg/bouncycastle/asn1/pkcs/MacData;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    new-instance p2, Lorg/bouncycastle/asn1/pkcs/Pfx;

    .line 42
    .line 43
    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;-><init>(Lorg/bouncycastle/asn1/pkcs/Pfx;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "unable to encode AuthenticatedSafe: "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p2
.end method

.class public Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final attributeCertificate:I = 0x1

.field public static final certificate:I = -0x1

.field public static final publicKeyCertificate:I


# instance fields
.field private attributeCert:[B

.field private cert:Lorg/bouncycastle/asn1/x509/Certificate;

.field private publicKeyCert:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown tag number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v1}, Ll1/e;->l(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;
    .locals 2

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    .line 1
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;
    .locals 0

    .line 6
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCertificateBytes()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v2, "can\'t decode certificate: "

    .line 14
    .line 15
    invoke-static {v2, v0}, Ll1/e;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v1

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    .line 33
    .line 34
    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

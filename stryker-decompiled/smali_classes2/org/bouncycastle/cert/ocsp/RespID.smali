.class public Lorg/bouncycastle/cert/ocsp/RespID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field id:Lorg/bouncycastle/asn1/ocsp/ResponderID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/cert/ocsp/RespID;->HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/RespID;->id:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/RespID;->id:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 3

    const-string v0, "only SHA-1 can be used with RespID - found: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/cert/ocsp/RespID;->HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance p1, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/RespID;->id:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v0, "problem creating ID: "

    .line 3
    invoke-static {v0, p1}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/cert/ocsp/RespID;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cert/ocsp/RespID;

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RespID;->id:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    iget-object p1, p1, Lorg/bouncycastle/cert/ocsp/RespID;->id:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RespID;->id:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RespID;->id:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    return-object v0
.end method

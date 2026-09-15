.class public Lorg/bouncycastle/eac/EACCertificateBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ZeroArray:[B


# instance fields
.field private certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

.field private certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

.field private certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

.field private certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

.field private certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

.field private publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lorg/bouncycastle/eac/EACCertificateBuilder;->ZeroArray:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;Lorg/bouncycastle/asn1/eac/CertificateHolderReference;Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;Lorg/bouncycastle/asn1/eac/PackedDate;Lorg/bouncycastle/asn1/eac/PackedDate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    iput-object p2, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    iput-object p3, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    iput-object p4, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    iput-object p5, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    iput-object p6, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    return-void
.end method

.method private buildBody()Lorg/bouncycastle/asn1/eac/CertificateBody;
    .locals 9

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v0, 0x29

    sget-object v2, Lorg/bouncycastle/eac/EACCertificateBuilder;->ZeroArray:[B

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    new-instance v8, Lorg/bouncycastle/asn1/eac/CertificateBody;

    iget-object v2, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    iget-object v3, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    iget-object v4, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    iget-object v5, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    iget-object v6, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    iget-object v7, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/asn1/eac/CertificateBody;-><init>(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;Lorg/bouncycastle/asn1/eac/CertificateHolderReference;Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;Lorg/bouncycastle/asn1/eac/PackedDate;Lorg/bouncycastle/asn1/eac/PackedDate;)V

    return-object v8
.end method


# virtual methods
.method public build(Lorg/bouncycastle/eac/operator/EACSigner;)Lorg/bouncycastle/eac/EACCertificateHolder;
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/eac/EACCertificateBuilder;->buildBody()Lorg/bouncycastle/asn1/eac/CertificateBody;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSigner;->getOutputStream()Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "DER"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lorg/bouncycastle/eac/EACCertificateHolder;

    .line 22
    .line 23
    new-instance v2, Lorg/bouncycastle/asn1/eac/CVCertificate;

    .line 24
    .line 25
    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSigner;->getSignature()[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v2, v0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;-><init>(Lorg/bouncycastle/asn1/eac/CertificateBody;[B)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lorg/bouncycastle/eac/EACCertificateHolder;-><init>(Lorg/bouncycastle/asn1/eac/CVCertificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Lorg/bouncycastle/eac/EACException;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "unable to process signature: "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

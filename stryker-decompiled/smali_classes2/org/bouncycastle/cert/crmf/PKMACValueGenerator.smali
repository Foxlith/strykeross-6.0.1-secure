.class Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;->builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    return-void
.end method


# virtual methods
.method public generate([CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/PKMACValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;->builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    const-string v1, "DER"

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    new-instance p2, Lorg/bouncycastle/asn1/crmf/PKMACValue;

    .line 24
    .line 25
    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    .line 30
    .line 31
    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, v0, v1}, Lorg/bouncycastle/asn1/crmf/PKMACValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    .line 39
    .line 40
    .line 41
    return-object p2

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "exception encoding mac input: "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw p2
.end method

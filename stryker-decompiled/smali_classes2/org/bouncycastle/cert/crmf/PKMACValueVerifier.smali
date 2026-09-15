.class Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;->builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    return-void
.end method


# virtual methods
.method public isValid(Lorg/bouncycastle/asn1/crmf/PKMACValue;[CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;->builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/PKMACValue;->getAlgId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PBMParameter;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->setParameters(Lorg/bouncycastle/asn1/cmp/PBMParameter;)Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;->builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :try_start_0
    const-string v1, "DER"

    .line 29
    .line 30
    invoke-virtual {p3, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    invoke-interface {p2}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/PKMACValue;->getValue()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p2, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    .line 59
    .line 60
    new-instance p3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v0, "exception encoding mac input: "

    .line 63
    .line 64
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p2
.end method

.class Lorg/bouncycastle/pkcs/MacDataGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    return-void
.end method


# virtual methods
.method public build([C[B)Lorg/bouncycastle/asn1/pkcs/MacData;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

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
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    .line 24
    .line 25
    invoke-interface {v1}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lorg/bouncycastle/asn1/pkcs/MacData;

    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-direct {p2, v0, v1, p1}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V

    .line 59
    .line 60
    .line 61
    return-object p2

    .line 62
    :catch_0
    move-exception p1

    .line 63
    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "unable to process data: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw p2
.end method

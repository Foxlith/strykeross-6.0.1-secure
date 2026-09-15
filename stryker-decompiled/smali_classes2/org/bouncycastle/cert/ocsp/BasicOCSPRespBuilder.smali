.class public Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private responderID:Lorg/bouncycastle/cert/ocsp/RespID;

.field private responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    new-instance v0, Lorg/bouncycastle/cert/ocsp/RespID;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/cert/ocsp/RespID;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/ocsp/RespID;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    return-void
.end method


# virtual methods
.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 9

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    new-instance v8, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;-><init>(Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 4
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 5
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/util/Date;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->toResponse()Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    .line 34
    .line 35
    const-string p3, "exception creating Request"

    .line 36
    .line 37
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p2

    .line 41
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    .line 42
    .line 43
    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/bouncycastle/cert/ocsp/RespID;

    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/RespID;->toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/ResponderID;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 50
    .line 51
    invoke-direct {v3, p3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    .line 52
    .line 53
    .line 54
    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    .line 55
    .line 56
    invoke-direct {p3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 60
    .line 61
    invoke-direct {v0, v2, v3, p3, v1}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    const-string v1, "DER"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 78
    .line 79
    .line 80
    new-instance p3, Lorg/bouncycastle/asn1/DERBitString;

    .line 81
    .line 82
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {p3, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p2, :cond_2

    .line 94
    .line 95
    array-length v1, p2

    .line 96
    if-lez v1, :cond_2

    .line 97
    .line 98
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 99
    .line 100
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    :goto_1
    array-length v3, p2

    .line 105
    if-eq v2, v3, :cond_1

    .line 106
    .line 107
    aget-object v3, p2, v2

    .line 108
    .line 109
    invoke-virtual {v3}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    .line 120
    .line 121
    invoke-direct {p2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    const/4 p2, 0x0

    .line 126
    :goto_2
    new-instance v1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 127
    .line 128
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 129
    .line 130
    invoke-direct {v2, v0, p1, p3, p2}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/ResponseData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    .line 134
    .line 135
    .line 136
    return-object v1

    .line 137
    :catch_1
    move-exception p1

    .line 138
    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    .line 139
    .line 140
    new-instance p3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v0, "exception processing TBSRequest: "

    .line 143
    .line 144
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p3}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    throw p2
.end method

.method public setResponseExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object p0
.end method

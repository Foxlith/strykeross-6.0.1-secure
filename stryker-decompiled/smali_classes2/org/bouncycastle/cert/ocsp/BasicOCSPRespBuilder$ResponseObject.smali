.class Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseObject"
.end annotation


# instance fields
.field certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

.field certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

.field extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field final synthetic this$0:Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

.field thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 3

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->this$0:Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    new-instance p2, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    invoke-direct {p2}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>()V

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_1

    :cond_0
    instance-of p2, p3, Lorg/bouncycastle/cert/ocsp/UnknownStatus;

    if-eqz p2, :cond_1

    new-instance p2, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    const/4 p3, 0x2

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {p2, p3, v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    check-cast p3, Lorg/bouncycastle/cert/ocsp/RevokedStatus;

    invoke-virtual {p3}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->hasRevocationReason()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p3}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {p3}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationReason()I

    move-result p3

    invoke-static {p3}, Lorg/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p3}, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object p3

    invoke-direct {v1, p3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V

    goto :goto_0

    :goto_1
    new-instance p2, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {p2, p4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object p2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz p5, :cond_3

    new-instance p1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {p1, p5}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    :cond_3
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object p6, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method


# virtual methods
.method public toResponse()Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .locals 7

    new-instance v6, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certId:Lorg/bouncycastle/cert/ocsp/CertificateID;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/CertificateID;->toASN1Primitive()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    iget-object v3, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v4, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v5, p0, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/CertStatus;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object v6
.end method

.class public Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private body:Lorg/bouncycastle/asn1/cmp/PKIBody;

.field private extraCerts:Ljava/util/List;

.field private generalInfos:Ljava/util/List;

.field private hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;-><init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;-><init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method private calculateMac(Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)[B
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object p1

    return-object p1
.end method

.method private calculateSignature(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)[B
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object p1

    return-object p1
.end method

.method private finaliseHeader(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setProtectionAlg(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    iget-object p1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo([Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    :cond_0
    return-void
.end method

.method private finaliseMessage(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iget-object v4, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v4}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;

    new-instance v2, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    iget-object v3, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-direct {v2, p1, v3, p2, v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/ASN1BitString;[Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;

    new-instance v1, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-direct {v1, p1, v2, p2}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/ASN1BitString;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V

    return-object v0
.end method


# virtual methods
.method public addCMPCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGeneralInfo(Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseHeader(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->build()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-direct {p0, p1, v0, v2}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->calculateSignature(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseMessage(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to encode signature input: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "body must be set before building"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build(Lorg/bouncycastle/operator/MacCalculator;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseHeader(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->build()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-direct {p0, p1, v0, v2}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->calculateMac(Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseMessage(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to encode MAC input: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "body must be set before building"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBody(Lorg/bouncycastle/asn1/cmp/PKIBody;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object p0
.end method

.method public setFreeText(Lorg/bouncycastle/asn1/cmp/PKIFreeText;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setFreeText(Lorg/bouncycastle/asn1/cmp/PKIFreeText;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setMessageTime(Ljava/util/Date;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setMessageTime(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setRecipKID([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setRecipKID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setRecipNonce([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setRecipNonce([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setSenderKID([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setSenderKID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setSenderNonce([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setSenderNonce([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setTransactionID([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setTransactionID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

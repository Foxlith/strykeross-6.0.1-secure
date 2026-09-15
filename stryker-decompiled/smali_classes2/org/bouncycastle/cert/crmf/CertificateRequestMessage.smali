.class public Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# static fields
.field public static final popKeyAgreement:I = 0x3

.field public static final popKeyEncipherment:I = 0x2

.field public static final popRaVerified:I = 0x0

.field public static final popSigningKey:I = 0x1


# instance fields
.field private final certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

.field private final controls:Lorg/bouncycastle/asn1/crmf/Controls;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getControls()Lorg/bouncycastle/asn1/crmf/Controls;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->parseBytes([B)Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    return-void
.end method

.method private findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/Controls;->toAttributeTypeAndValueArray()[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v1, v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    .locals 3

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getSignature()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to create verifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/crmf/Control;
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;-><init>(Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cert/crmf/RegTokenControl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/crmf/RegTokenControl;-><init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/cert/crmf/AuthenticatorControl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/crmf/AuthenticatorControl;-><init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getProofOfPossessionType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v0

    return v0
.end method

.method public hasControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasControls()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProofOfPossession()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSigningKeyProofOfPossessionWithPKMAC()Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public isValidSigningKeyPOP(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "verification requires password check"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not Signing Key type of proof of possession"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValidSigningKeyPOP(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/cert/crmf/PKMACBuilder;[C)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getSender()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;

    invoke-direct {v2, p2}, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;-><init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)V

    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p2

    invoke-virtual {v2, v1, p3, p2}, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;->isValid(Lorg/bouncycastle/asn1/crmf/PKMACValue;[CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no PKMAC present in proof of possession"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not Signing Key type of proof of possession"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    return-object v0
.end method

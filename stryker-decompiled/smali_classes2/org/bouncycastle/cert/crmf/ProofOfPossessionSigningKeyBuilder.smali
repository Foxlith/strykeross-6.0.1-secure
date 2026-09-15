.class public Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certRequest:Lorg/bouncycastle/asn1/crmf/CertRequest;

.field private name:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->certRequest:Lorg/bouncycastle/asn1/crmf/CertRequest;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "name and publicKeyMAC cannot both be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->certRequest:Lorg/bouncycastle/asn1/crmf/CertRequest;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;-><init>(Lorg/bouncycastle/asn1/crmf/PKMACValue;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Object;Ljava/io/OutputStream;)V

    :goto_1
    new-instance v1, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;-><init>(Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v1
.end method

.method public setPublicKeyMac(Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;[C)Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;->generate([CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    return-object p0
.end method

.method public setSender(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object p0
.end method

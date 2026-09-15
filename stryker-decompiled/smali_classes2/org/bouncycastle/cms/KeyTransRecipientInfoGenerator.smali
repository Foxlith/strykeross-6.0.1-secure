.class public abstract Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

.field private subjectKeyIdentifier:[B

.field protected final wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/operator/AsymmetricKeyWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    iput-object p2, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/AsymmetricKeyWrapper;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->subjectKeyIdentifier:[B

    iput-object p2, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;

    return-void
.end method


# virtual methods
.method public final generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v1, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->subjectKeyIdentifier:[B

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v2, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    iget-object v3, p0, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;

    invoke-virtual {v3}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception wrapping content key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

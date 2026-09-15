.class public Lorg/bouncycastle/cms/KEKRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;
.source "SourceFile"


# instance fields
.field private info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getKekid()Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/KEKRecipientId;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->getKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/KEKRecipientId;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/cms/RecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 3

    check-cast p1, Lorg/bouncycastle/cms/KEKRecipient;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cms/KEKRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object p1

    return-object p1
.end method

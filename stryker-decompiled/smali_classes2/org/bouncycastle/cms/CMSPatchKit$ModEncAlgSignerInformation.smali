.class Lorg/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;
.super Lorg/bouncycastle/cms/SignerInformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSPatchKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModEncAlgSignerInformation"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-static {v0, p2}, Lorg/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;->editEncAlg(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/SignerInfo;)V

    return-void
.end method

.method private static editEncAlg(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 8

    new-instance v7, Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v7
.end method

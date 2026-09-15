.class public Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private final evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

.field private final lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getArchiveTimeStampSequence()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getArchiveTimeStampChains()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->getArchiveTimestamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastArchiveTimeStamp()Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    return-object v0
.end method

.method public getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    return-void
.end method

.method public validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V

    return-void
.end method

.method public validatePresent([BLjava/util/Date;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent([BLjava/util/Date;)V

    return-void
.end method

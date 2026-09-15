.class public Lorg/bouncycastle/oer/its/ToBeSignedCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    }
.end annotation


# instance fields
.field private final appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

.field private final assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

.field private final canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

.field private final certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

.field private final certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

.field private final certificateId:Lorg/bouncycastle/oer/its/CertificateId;

.field private final cracaId:Lorg/bouncycastle/oer/its/HashedId;

.field private final crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

.field private final encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

.field private final geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

.field private final validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

.field private final verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/oer/its/HashedId;Lorg/bouncycastle/oer/its/CrlSeries;Lorg/bouncycastle/oer/its/ValidityPeriod;Lorg/bouncycastle/oer/its/GeographicRegion;Lorg/bouncycastle/oer/its/SubjectAssurance;Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/asn1/ASN1Null;Lorg/bouncycastle/oer/its/PublicEncryptionKey;Lorg/bouncycastle/oer/its/VerificationKeyIndicator;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    iput-object p5, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    iput-object p6, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    iput-object p7, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    iput-object p8, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    iput-object p9, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    iput-object p10, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iput-object p11, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    iput-object p12, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/CertificateId;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/HashedId;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/PublicEncryptionKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/VerificationKeyIndicator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/CrlSeries;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ValidityPeriod;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/GeographicRegion;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/SubjectAssurance;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/asn1/ASN1Null;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate;
    .locals 3

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/CertificateId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CertificateId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setCertificateId(Lorg/bouncycastle/oer/its/CertificateId;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/HashedId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashedId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setCracaId(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/CrlSeries;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CrlSeries;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setCrlSeries(Lorg/bouncycastle/oer/its/CrlSeries;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ValidityPeriod;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ValidityPeriod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setValidityPeriod(Lorg/bouncycastle/oer/its/ValidityPeriod;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setGeographicRegion(Lorg/bouncycastle/oer/its/GeographicRegion;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/SubjectAssurance;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/SubjectAssurance;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setAssuranceLevel(Lorg/bouncycastle/oer/its/SubjectAssurance;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setAppPermissions(Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    invoke-static {v2, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setCertIssuePermissions(Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setCertRequestPermissions(Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/asn1/ASN1Null;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Null;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setCanRequestRollover(Lorg/bouncycastle/asn1/ASN1Null;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setEncryptionKey(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->setVerificationKeyIndicator(Lorg/bouncycastle/oer/its/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    check-cast p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    return-object p0
.end method


# virtual methods
.method public getAppPermissions()Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    return-object v0
.end method

.method public getAssuranceLevel()Lorg/bouncycastle/oer/its/SubjectAssurance;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    return-object v0
.end method

.method public getCanRequestRollover()Lorg/bouncycastle/asn1/ASN1Null;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    return-object v0
.end method

.method public getCertIssuePermissions()Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    return-object v0
.end method

.method public getCertRequestPermissions()Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    return-object v0
.end method

.method public getCertificateId()Lorg/bouncycastle/oer/its/CertificateId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    return-object v0
.end method

.method public getCracaId()Lorg/bouncycastle/oer/its/HashedId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    return-object v0
.end method

.method public getCrlSeries()Lorg/bouncycastle/oer/its/CrlSeries;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    return-object v0
.end method

.method public getEncryptionKey()Lorg/bouncycastle/oer/its/PublicEncryptionKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    return-object v0
.end method

.method public getGeographicRegion()Lorg/bouncycastle/oer/its/GeographicRegion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    return-object v0
.end method

.method public getValidityPeriod()Lorg/bouncycastle/oer/its/ValidityPeriod;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    return-object v0
.end method

.method public getVerificationKeyIndicator()Lorg/bouncycastle/oer/its/VerificationKeyIndicator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ToBeSignedCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

.field private assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

.field private canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

.field private certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

.field private certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

.field private certificateId:Lorg/bouncycastle/oer/its/CertificateId;

.field private cracaId:Lorg/bouncycastle/oer/its/HashedId;

.field private crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

.field private encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

.field private geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

.field private validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

.field private verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iget-object v0, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    iget-object p1, p1, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$000(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/CertificateId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$100(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/HashedId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$200(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/CrlSeries;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$300(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ValidityPeriod;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$400(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/GeographicRegion;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$500(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/SubjectAssurance;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$600(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$700(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$800(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$900(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$1000(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->access$1100(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    return-void
.end method


# virtual methods
.method public createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;
    .locals 14

    new-instance v13, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    iget-object v6, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    iget-object v7, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    iget-object v8, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    iget-object v9, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    iget-object v10, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iget-object v11, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    iget-object v12, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;-><init>(Lorg/bouncycastle/oer/its/CertificateId;Lorg/bouncycastle/oer/its/HashedId;Lorg/bouncycastle/oer/its/CrlSeries;Lorg/bouncycastle/oer/its/ValidityPeriod;Lorg/bouncycastle/oer/its/GeographicRegion;Lorg/bouncycastle/oer/its/SubjectAssurance;Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/asn1/ASN1Null;Lorg/bouncycastle/oer/its/PublicEncryptionKey;Lorg/bouncycastle/oer/its/VerificationKeyIndicator;)V

    return-object v13
.end method

.method public setAppPermissions(Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidSsp;

    return-object p0
.end method

.method public setAssuranceLevel(Lorg/bouncycastle/oer/its/SubjectAssurance;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/SubjectAssurance;

    return-object p0
.end method

.method public setCanRequestRollover(Lorg/bouncycastle/asn1/ASN1Null;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    return-object p0
.end method

.method public setCertIssuePermissions(Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method public setCertRequestPermissions(Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method public setCertificateId(Lorg/bouncycastle/oer/its/CertificateId;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->certificateId:Lorg/bouncycastle/oer/its/CertificateId;

    return-object p0
.end method

.method public setCracaId(Lorg/bouncycastle/oer/its/HashedId;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/HashedId;

    return-object p0
.end method

.method public setCrlSeries(Lorg/bouncycastle/oer/its/CrlSeries;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    return-object p0
.end method

.method public setEncryptionKey(Lorg/bouncycastle/oer/its/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    return-object p0
.end method

.method public setGeographicRegion(Lorg/bouncycastle/oer/its/GeographicRegion;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->geographicRegion:Lorg/bouncycastle/oer/its/GeographicRegion;

    return-object p0
.end method

.method public setValidityPeriod(Lorg/bouncycastle/oer/its/ValidityPeriod;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ValidityPeriod;

    return-object p0
.end method

.method public setVerificationKeyIndicator(Lorg/bouncycastle/oer/its/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;->verificationKeyIndicator:Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    return-object p0
.end method

.class public Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;->digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;)Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .locals 3

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object p1

    invoke-direct {v1, v2, v2, p1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    iget-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;->digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

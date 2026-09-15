.class public Lorg/bouncycastle/oer/its/template/IEEE1609dot2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AesCcmCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateBase:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateId:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ContributedExtensionBlock:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Countersignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EncryptedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EncryptedDataEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EndEntityType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EtsiOriginatingHeaderInfoExtension:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HashedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HeaderInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HeaderInfoContributorId:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Ieee1609Dot2Content:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Ieee1609Dot2Data:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final IssuerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final LinkageData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final MissingCrlIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PKRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PduFunctionalType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PreSharedKeyRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfPsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignedDataPayload:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SubjectPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SymmRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SymmetricCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final VerificationKeyIndicator:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final certificate:Lorg/bouncycastle/oer/OERDefinition$Element;

.field public static final tbsCertificate:Lorg/bouncycastle/oer/OERDefinition$Element;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xff

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->PduFunctionalType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v5, 0x20

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "sha256HashedData"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const/16 v8, 0x30

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "sha384HashedData"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v9, "reserved"

    invoke-virtual {v5, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    filled-new-array {v6, v7, v8, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->HashedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v6, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->HashedId3:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "cracaId"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->CrlSeries:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "crlSeries"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    filled-new-array {v8, v11, v12}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sput-object v8, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->MissingCrlIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->HeaderInfoContributorId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    sput-object v11, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->EtsiOriginatingHeaderInfoExtension:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    filled-new-array {v2, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->ContributedExtensionBlock:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v11, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sput-object v11, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->PreSharedKeyRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v12, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->EciesP256EncryptedKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "eciesNistP256"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    const-string v14, "eciesBrainpoolP256r1"

    invoke-virtual {v12, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    filled-new-array {v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    sput-object v12, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->EncryptedDataEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "recipientId"

    invoke-virtual {v11, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "encKey"

    invoke-virtual {v12, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    filled-new-array {v14, v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    sput-object v12, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->PKRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v14, 0xc

    invoke-static {v14}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v0, "nonce"

    invoke-virtual {v14, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->opaque()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v14, "ccmCiphertext"

    invoke-virtual {v1, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->AesCcmCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "aes128ccm"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SymmetricCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v11, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    invoke-virtual {v0, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SymmRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "pskRecipInfo"

    invoke-virtual {v11, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    const-string v14, "symmRecipInfo"

    invoke-virtual {v1, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v14, "certRecipInfo"

    invoke-virtual {v12, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "signedDataRecipInfo"

    invoke-virtual {v12, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    move-object/from16 v18, v5

    const-string v5, "rekRecipInfo"

    invoke-virtual {v12, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    filled-new-array {v13, v1, v14, v15, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->RecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SequenceOfRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v5, "recipients"

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v5, "ciphertext"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->EncryptedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Lorg/bouncycastle/oer/OERDefinition;->bitString(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-instance v5, Lorg/bouncycastle/asn1/DERBitString;

    const/4 v12, 0x1

    new-array v13, v12, [B

    const/4 v14, 0x0

    aput-byte v14, v13, v14

    invoke-direct {v5, v13, v14}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->EndEntityType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v5, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->SequenceOfPsidSspRange:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    filled-new-array {v5, v13, v15}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v13, "SubjectPermissions"

    invoke-virtual {v5, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SubjectPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v13, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->PublicVerificationKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v15, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->EccP256CurvePoint:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    filled-new-array {v13, v15, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    const-string v14, "VerificationKeyIndicator"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    sput-object v13, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->VerificationKeyIndicator:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Lorg/bouncycastle/oer/OERDefinition;->integer(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Lorg/bouncycastle/oer/OERDefinition;->integer(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    filled-new-array {v5, v14, v15, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v5, "PsidGroupPermissions"

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->PsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v5, "SequenceOfPsidGroupPermissions"

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SequenceOfPsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v5, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->IValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v14, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->LinkageValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v15, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->GroupLinkageValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    filled-new-array {v5, v14, v15, v12}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v12, "LinkageData"

    invoke-virtual {v5, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->LinkageData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v12, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->Hostname:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v14, 0x40

    const/4 v15, 0x1

    invoke-static {v15, v14}, Lorg/bouncycastle/oer/OERDefinition;->octets(II)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "binaryId"

    invoke-virtual {v14, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    move-object/from16 v17, v0

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    filled-new-array {v5, v12, v14, v15, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v5, "CertificateId"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->CertificateId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v19

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v20

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v21

    sget-object v0, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->ValidityPeriod:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "validityPeriod"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v22

    sget-object v0, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->GeographicRegion:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "region"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v23

    sget-object v0, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->SubjectAssurance:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "assuranceLevel"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v24

    sget-object v0, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->SequenceOfPsidSsp:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "appPermissions"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v25

    const-string v0, "certIssuePermissions"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v26

    const-string v0, "certRequestPermissions"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v27

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "canRequestRollover"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v28

    sget-object v0, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->PublicEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "encryptionKey"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v29

    filled-new-array/range {v23 .. v29}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    const-string v0, "verifyKeyIndicator"

    invoke-virtual {v13, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v24

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v25

    filled-new-array/range {v19 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v3, "ToBeSignedCertificate"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v3, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->HashAlgorithm:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    filled-new-array {v11, v3, v5, v11}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v7, "IssuerIdentifier"

    invoke-virtual {v5, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->IssuerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "explicit"

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v9, "implicit"

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    filled-new-array {v7, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v9, "CertificateType"

    invoke-virtual {v7, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->CertificateType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v9, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->UINT8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v10, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->Signature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    filled-new-array {v9, v7, v5, v0, v12}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v7, "CertificateBase"

    invoke-virtual {v5, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->CertificateBase:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v7, "Certificate(CertificateBase)"

    invoke-virtual {v5, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SequenceOfCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v12, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->Psid:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "psid"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->Time64:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "generationTime"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v19

    const-string v14, "expiryTime"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v20

    sget-object v13, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->ThreeDLocation:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "generationLocation"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v21

    const-string v13, "p2pcdLearningRequest"

    invoke-virtual {v6, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v22

    const-string v6, "missingCrlIdentifier"

    invoke-virtual {v8, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v23

    sget-object v6, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->EncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v6, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v24

    filled-new-array/range {v19 .. v24}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v8, Lorg/bouncycastle/oer/its/template/Ieee1609Dot2BaseTypes;->SequenceOfHashedId3:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "inlineP2pcdRequest"

    invoke-virtual {v8, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v13, "requestedCertificate"

    invoke-virtual {v5, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    const-string v14, "pduFunctionalType"

    invoke-virtual {v4, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v14, "contributedExtensions"

    invoke-virtual {v2, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    filled-new-array {v8, v13, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    filled-new-array {v12, v1, v6, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->HeaderInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "digest"

    invoke-virtual {v11, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v6, "self"

    invoke-virtual {v4, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    filled-new-array {v2, v7, v4, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SignerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-instance v4, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;

    sget-object v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v4, v6}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    sput-object v4, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "hashId"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "tbsData"

    invoke-virtual {v4, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "signer"

    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v7, "signature"

    invoke-virtual {v10, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    filled-new-array {v3, v6, v2, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->opaque()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "unsecuredData"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "signedData"

    invoke-virtual {v2, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v6, "encryptedData"

    move-object/from16 v7, v17

    invoke-virtual {v7, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->opaque()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "signedCertificateRequest"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    filled-new-array {v3, v2, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->Ieee1609Dot2Content:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "protocolVersion"

    invoke-virtual {v9, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->Countersignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v9, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->Ieee1609Dot2Data:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "extDataHash"

    move-object/from16 v6, v18

    invoke-virtual {v6, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->extension()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->SignedDataPayload:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/OERDefinition$Element;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->certificate:Lorg/bouncycastle/oer/OERDefinition$Element;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/OERDefinition$Element;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->tbsCertificate:Lorg/bouncycastle/oer/OERDefinition$Element;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "payload"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "headerInfo"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {v4, v0}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->addItemsAndFreeze([Lorg/bouncycastle/oer/OERDefinition$Builder;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

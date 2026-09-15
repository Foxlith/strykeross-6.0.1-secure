.class public Lorg/bouncycastle/oer/its/PublicEncryptionKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final basePublicEncryptionKey:Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

.field private final supportedSymmAlg:Lorg/bouncycastle/oer/its/SymmAlgorithm;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/SymmAlgorithm;Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->supportedSymmAlg:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->basePublicEncryptionKey:Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PublicEncryptionKey;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/SymmAlgorithm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SymmAlgorithm;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/PublicEncryptionKey;-><init>(Lorg/bouncycastle/oer/its/SymmAlgorithm;Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;)V

    return-object v0
.end method


# virtual methods
.method public getBasePublicEncryptionKey()Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->basePublicEncryptionKey:Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    return-object v0
.end method

.method public getSupportedSymmAlg()Lorg/bouncycastle/oer/its/SymmAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->supportedSymmAlg:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->supportedSymmAlg:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PublicEncryptionKey;->basePublicEncryptionKey:Lorg/bouncycastle/oer/its/BasePublicEncryptionKey;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method

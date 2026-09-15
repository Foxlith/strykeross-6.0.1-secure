.class public Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;
.super Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CONTEXT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;->DEFAULT_CONTEXT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/signers/Ed448Signer;

    sget-object v0, Lorg/bouncycastle/operator/bc/BcEdDSAContentVerifierProviderBuilder;->DEFAULT_CONTEXT:[B

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/signers/Ed448Signer;-><init>([B)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/signers/Ed25519Signer;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;-><init>()V

    return-object p1
.end method

.method public extractKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1
.end method

.class public Lorg/bouncycastle/cms/CMSConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSigningDigestAlgorithmMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static setSigningEncryptionAlgorithmMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/cms/CMSSignedHelper;->setSigningEncryptionAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-void
.end method

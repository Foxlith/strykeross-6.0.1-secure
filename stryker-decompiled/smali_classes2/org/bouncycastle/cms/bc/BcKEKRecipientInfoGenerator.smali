.class public Lorg/bouncycastle/cms/bc/BcKEKRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/operator/SymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;-><init>([BLorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/bc/BcKEKRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;)V

    return-void
.end method

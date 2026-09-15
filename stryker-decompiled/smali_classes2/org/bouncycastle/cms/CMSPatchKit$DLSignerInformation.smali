.class Lorg/bouncycastle/cms/CMSPatchKit$DLSignerInformation;
.super Lorg/bouncycastle/cms/SignerInformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSPatchKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLSignerInformation"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/SignerInformation;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/cms/SignerInformation;)V

    return-void
.end method


# virtual methods
.method public getEncodedSignedAttributes()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    const-string v1, "DL"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

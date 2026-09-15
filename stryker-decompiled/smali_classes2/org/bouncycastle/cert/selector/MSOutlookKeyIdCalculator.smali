.class Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;,
        Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateKeyId(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 4

    new-instance v0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "DER"

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update([BII)V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->doFinal([BI)I

    return-object v1

    :catch_0
    new-array p0, v2, [B

    return-object p0
.end method

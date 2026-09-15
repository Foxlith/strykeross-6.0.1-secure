.class Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/CMSSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

.field final synthetic val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getEncryptedContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-static {v2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->access$000(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

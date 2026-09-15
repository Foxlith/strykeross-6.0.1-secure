.class Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/CMSSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSEnvelopedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMSAuthenticatedSecureReadable"
.end annotation


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private readable:Lorg/bouncycastle/cms/CMSReadable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;->readable:Lorg/bouncycastle/cms/CMSReadable;

    return-void
.end method


# virtual methods
.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;->readable:Lorg/bouncycastle/cms/CMSReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

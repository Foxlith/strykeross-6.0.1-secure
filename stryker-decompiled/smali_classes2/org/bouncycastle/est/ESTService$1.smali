.class Lorg/bouncycastle/est/ESTService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/ESTSourceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/ESTService;->simpleEnrollPoP(ZLorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/est/ESTAuth;)Lorg/bouncycastle/est/EnrollmentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/ESTService;

.field final synthetic val$builder:Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;

.field final synthetic val$contentSigner:Lorg/bouncycastle/operator/ContentSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/ESTService;Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/bouncycastle/operator/ContentSigner;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/ESTService$1;->this$0:Lorg/bouncycastle/est/ESTService;

    iput-object p2, p0, Lorg/bouncycastle/est/ESTService$1;->val$builder:Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;

    iput-object p3, p0, Lorg/bouncycastle/est/ESTService$1;->val$contentSigner:Lorg/bouncycastle/operator/ContentSigner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Lorg/bouncycastle/est/Source;Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTRequest;
    .locals 4

    instance-of v0, p1, Lorg/bouncycastle/est/TLSUniqueProvider;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/est/TLSUniqueProvider;

    invoke-interface {p1}, Lorg/bouncycastle/est/TLSUniqueProvider;->isTLSUniqueAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;

    iget-object v1, p0, Lorg/bouncycastle/est/ESTService$1;->val$builder:Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;-><init>(Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/est/TLSUniqueProvider;->getTLSUnique()[B

    move-result-object p1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->setAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;

    iget-object p1, p0, Lorg/bouncycastle/est/ESTService$1;->this$0:Lorg/bouncycastle/est/ESTService;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTService$1;->val$contentSigner:Lorg/bouncycastle/operator/ContentSigner;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/est/ESTService;->access$000(Lorg/bouncycastle/est/ESTService;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/est/ESTRequestBuilder;->withData([B)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object p1

    const-string p2, "Content-Type"

    const-string v0, "application/pkcs10"

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    const-string p2, "Content-Transfer-Encoding"

    const-string v0, "base64"

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0, p2}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Source does not supply TLS unique."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

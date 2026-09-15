.class Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/eac/operator/EACSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;->build(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/eac/operator/EACSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;

.field final synthetic val$sigStream:Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;

.field final synthetic val$usageOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->this$0:Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;

    iput-object p2, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$usageOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$sigStream:Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$sigStream:Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$sigStream:Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;->getSignature()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$usageOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;->access$000([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception obtaining signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUsageIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$1;->val$usageOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

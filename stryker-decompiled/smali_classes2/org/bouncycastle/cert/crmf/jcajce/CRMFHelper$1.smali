.class Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$JCECallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

.field final synthetic val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$sKey:Ljava/security/Key;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->this$0:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInJCE()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->this$0:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Primitive;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    instance-of v4, v1, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->this$0:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4, v1}, Lorg/bouncycastle/jcajce/util/AlgorithmParametersUtils;->loadParameters(Ljava/security/AlgorithmParameters;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    invoke-virtual {v0, v3, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    goto/16 :goto_3

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    new-instance v5, Lorg/bouncycastle/cert/crmf/CRMFException;

    const-string v6, "error decoding algorithm parameters."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    throw v4

    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_3

    :cond_2
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v4, 0x8

    new-array v4, v4, [B

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_3
    return-object v0
.end method

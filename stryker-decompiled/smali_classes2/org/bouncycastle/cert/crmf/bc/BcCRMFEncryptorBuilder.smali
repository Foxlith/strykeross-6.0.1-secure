.class public Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;
    }
.end annotation


# instance fields
.field private final encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private helper:Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;

.field private final keySize:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->helper:Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput p2, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->keySize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;)Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->helper:Lorg/bouncycastle/cert/crmf/bc/CRMFHelper;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/operator/OutputEncryptor;
    .locals 4

    new-instance v0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v2, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->keySize:I

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder$CRMFOutputEncryptor;-><init>(Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V

    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/bc/BcCRMFEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

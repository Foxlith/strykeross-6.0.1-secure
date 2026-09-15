.class public Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;,
        Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;,
        Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;
    }
.end annotation


# static fields
.field private static final KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;


# instance fields
.field private final encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

.field private final keySize:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    sput-object v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    const-string v2, "incorrect keySize for encryptionOID passed to builder."

    if-eqz v1, :cond_2

    const/16 p1, 0xa8

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x38

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-lez v0, :cond_6

    if-ne v0, p2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iput p2, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    :goto_2
    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/operator/OutputEncryptor;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->isAuthEnveloped(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v2, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;-><init>(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v2, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;-><init>(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V

    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

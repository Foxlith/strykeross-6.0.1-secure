.class public final Lorg/bouncycastle/cms/PasswordRecipient$PRF;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/PasswordRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PRF"
.end annotation


# static fields
.field public static final HMacSHA1:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

.field public static final HMacSHA224:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

.field public static final HMacSHA256:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

.field public static final HMacSHA384:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

.field public static final HMacSHA512:Lorg/bouncycastle/cms/PasswordRecipient$PRF;


# instance fields
.field private final hmac:Ljava/lang/String;

.field final prfAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA1"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA1:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA224"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA224:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA256"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA256:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA384"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA384:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "HMacSHA512"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    sput-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA512:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->hmac:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->prfAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public getAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->prfAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->hmac:Ljava/lang/String;

    return-object v0
.end method

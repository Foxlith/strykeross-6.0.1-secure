.class public abstract Lorg/bouncycastle/cms/bc/BcKEKRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/KEKRecipient;


# instance fields
.field private unwrapper:Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/bc/BcSymmetricKeyUnwrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcKEKRecipient;->unwrapper:Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;

    return-void
.end method


# virtual methods
.method public extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/cms/bc/BcKEKRecipient;->unwrapper:Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;

    invoke-interface {p1, p2, p3}, Lorg/bouncycastle/operator/KeyUnwrapper;->generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/bc/CMSUtils;->getBcKey(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "exception unwrapping key: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

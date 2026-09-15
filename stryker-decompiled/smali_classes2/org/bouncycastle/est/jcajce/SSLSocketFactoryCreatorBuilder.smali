.class Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected keyManagers:[Ljavax/net/ssl/KeyManager;

.field protected secureRandom:Ljava/security/SecureRandom;

.field protected tlsProvider:Ljava/security/Provider;

.field protected tlsVersion:Ljava/lang/String;

.field protected trustManagers:[Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLS"

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsVersion:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->trustManagers:[Ljavax/net/ssl/X509TrustManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Trust managers can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLS"

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsVersion:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->trustManagers:[Ljavax/net/ssl/X509TrustManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Trust managers can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;
    .locals 1

    new-instance v0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder$1;-><init>(Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;)V

    return-object v0
.end method

.method public withKeyManager(Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->keyManagers:[Ljavax/net/ssl/KeyManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->keyManagers:[Ljavax/net/ssl/KeyManager;

    :goto_0
    return-object p0
.end method

.method public withKeyManagers([Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->keyManagers:[Ljavax/net/ssl/KeyManager;

    return-object p0
.end method

.method public withProvider(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;
    .locals 2

    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsProvider:Ljava/security/Provider;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "JSSE provider not found: "

    .line 1
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withProvider(Ljava/security/Provider;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;
    .locals 0

    .line 7
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsProvider:Ljava/security/Provider;

    return-object p0
.end method

.method public withSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->secureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public withTLSVersion(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->tlsVersion:Ljava/lang/String;

    return-object p0
.end method

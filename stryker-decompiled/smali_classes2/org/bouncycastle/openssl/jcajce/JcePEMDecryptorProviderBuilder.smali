.class public Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/openssl/PEMDecryptorProvider;
    .locals 1

    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;-><init>(Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;[C)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

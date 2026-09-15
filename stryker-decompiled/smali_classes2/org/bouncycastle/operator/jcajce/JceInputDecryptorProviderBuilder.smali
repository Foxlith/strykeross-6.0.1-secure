.class public Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;
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

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method


# virtual methods
.method public build([B)Lorg/bouncycastle/operator/InputDecryptorProvider;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder$1;-><init>(Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;[B)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceInputDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

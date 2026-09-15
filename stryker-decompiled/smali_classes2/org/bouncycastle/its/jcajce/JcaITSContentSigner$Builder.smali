.class public Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, p1, v1, v2, v1}, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;-><init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$1;)V

    return-object v0
.end method

.method public build(Ljava/security/PrivateKey;Lorg/bouncycastle/its/ITSCertificate;)Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;
    .locals 3

    .line 2
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;-><init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$1;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

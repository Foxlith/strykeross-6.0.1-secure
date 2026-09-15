.class Lorg/bouncycastle/eac/operator/jcajce/ProviderEACHelper;
.super Lorg/bouncycastle/eac/operator/jcajce/EACHelper;
.source "SourceFile"


# instance fields
.field private final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/eac/operator/jcajce/EACHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/eac/operator/jcajce/ProviderEACHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/eac/operator/jcajce/ProviderEACHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p1

    return-object p1
.end method

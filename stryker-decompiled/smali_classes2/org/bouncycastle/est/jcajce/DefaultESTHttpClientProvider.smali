.class Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/ESTClientProvider;


# instance fields
.field private final absoluteLimit:Ljava/lang/Long;

.field private final bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

.field private final cipherSuites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterCipherSuites:Z

.field private final hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

.field private final socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;",
            "Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;",
            "I",
            "Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    iput p3, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->timeout:I

    iput-object p4, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iput-object p5, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->cipherSuites:Ljava/util/Set;

    iput-object p6, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->absoluteLimit:Ljava/lang/Long;

    iput-boolean p7, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->filterCipherSuites:Z

    return-void
.end method


# virtual methods
.method public isTrusted()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    invoke-interface {v0}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public makeClient()Lorg/bouncycastle/est/ESTClient;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    invoke-interface {v0}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;->createFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;

    new-instance v9, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;

    iget-object v3, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    iget v4, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->timeout:I

    iget-object v5, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iget-object v6, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->cipherSuites:Ljava/util/Set;

    iget-object v7, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->absoluteLimit:Ljava/lang/Long;

    iget-boolean v8, p0, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;->filterCipherSuites:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;-><init>(Lorg/bouncycastle/est/ESTClientSourceProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

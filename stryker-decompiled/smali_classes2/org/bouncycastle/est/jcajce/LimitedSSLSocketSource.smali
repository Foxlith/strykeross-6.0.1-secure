.class Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/Source;
.implements Lorg/bouncycastle/est/TLSUniqueProvider;
.implements Lorg/bouncycastle/est/LimitedSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/est/Source<",
        "Ljavax/net/ssl/SSLSession;",
        ">;",
        "Lorg/bouncycastle/est/TLSUniqueProvider;",
        "Lorg/bouncycastle/est/LimitedSource;"
    }
.end annotation


# instance fields
.field private final absoluteReadLimit:Ljava/lang/Long;

.field private final bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

.field protected final socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->socket:Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iput-object p3, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->absoluteReadLimit:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public getAbsoluteReadLimit()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->absoluteReadLimit:Ljava/lang/Long;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getTLSUnique()[B
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->isTLSUniqueAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->socket:Ljavax/net/ssl/SSLSocket;

    const-string v2, "tls-unique"

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;->getChannelBinding(Ljava/net/Socket;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No binding provider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isTLSUniqueAvailable()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-interface {v0, v1}, Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;->canAccessChannelBinding(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

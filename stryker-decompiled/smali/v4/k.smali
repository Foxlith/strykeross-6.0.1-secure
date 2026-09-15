.class public abstract Lv4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/j;


# instance fields
.field private request:Lv4/j;


# direct methods
.method public constructor <init>(Lv4/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lv4/k;->request:Lv4/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0, p1}, Lv4/j;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Lv4/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getInputStream()Lv4/h;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getLocales()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0, p1}, Lv4/j;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getParameterMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0, p1}, Lv4/j;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getReader()Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0, p1}, Lv4/j;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getRequest()Lv4/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    return-object v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Lv4/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0, p1}, Lv4/j;->getRequestDispatcher(Ljava/lang/String;)Lv4/d;

    const/4 p1, 0x0

    return-object p1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->getServerPort()I

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0}, Lv4/j;->isSecure()Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0, p1}, Lv4/j;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0, p1, p2}, Lv4/j;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/k;->request:Lv4/j;

    invoke-interface {v0, p1}, Lv4/j;->setCharacterEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setRequest(Lv4/j;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lv4/k;->request:Lv4/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

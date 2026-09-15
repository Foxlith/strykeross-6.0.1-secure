.class public abstract Ljavax/servlet/http/d;
.super Lv4/k;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/http/c;


# virtual methods
.method public getContextPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getContextPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/a;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getCookies()[Ljavax/servlet/http/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljavax/servlet/http/c;->getDateHeader(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljavax/servlet/http/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getHeaderNames()Ljava/util/Enumeration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljavax/servlet/http/c;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljavax/servlet/http/c;->getIntHeader(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getMethod()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getPathInfo()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getPathTranslated()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getQueryString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getRequestURI()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getRequestURL()Ljava/lang/StringBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getRequestedSessionId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->getServletPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/f;
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/c;

    .line 2
    invoke-interface {v0}, Ljavax/servlet/http/c;->getSession()Ljavax/servlet/http/f;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/f;
    .locals 1

    .line 3
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/c;

    .line 4
    invoke-interface {v0, p1}, Ljavax/servlet/http/c;->getSession(Z)Ljavax/servlet/http/f;

    const/4 p1, 0x0

    return-object p1
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->isRequestedSessionIdFromCookie()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->isRequestedSessionIdFromURL()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->isRequestedSessionIdFromUrl()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0}, Ljavax/servlet/http/c;->isRequestedSessionIdValid()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-super {p0}, Lv4/k;->getRequest()Lv4/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljavax/servlet/http/c;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljavax/servlet/http/c;->isUserInRole(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

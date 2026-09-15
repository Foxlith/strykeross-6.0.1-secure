.class public abstract Lv4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/e;
.implements Ljava/io/Serializable;


# instance fields
.field private transient config:Lv4/e;


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv4/c;->getServletConfig()Lv4/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lv4/e;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv4/c;->getServletConfig()Lv4/e;

    move-result-object v0

    invoke-interface {v0}, Lv4/e;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletConfig()Lv4/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/c;->config:Lv4/e;

    return-object v0
.end method

.method public getServletContext()Lv4/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv4/c;->getServletConfig()Lv4/e;

    move-result-object v0

    invoke-interface {v0}, Lv4/e;->getServletContext()Lv4/f;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/c;->config:Lv4/e;

    invoke-interface {v0}, Lv4/e;->getServletName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 1
    return-void
.end method

.method public init(Lv4/e;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lv4/c;->config:Lv4/e;

    invoke-virtual {p0}, Lv4/c;->init()V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv4/c;->getServletContext()Lv4/f;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lv4/c;->getServletName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    throw p1
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lv4/c;->getServletContext()Lv4/f;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lv4/c;->getServletName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    throw p1
.end method

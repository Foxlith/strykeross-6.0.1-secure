.class public interface abstract Ljavax/servlet/http/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/j;


# virtual methods
.method public abstract getContextPath()Ljava/lang/String;
.end method

.method public abstract getCookies()[Ljavax/servlet/http/a;
.end method

.method public abstract getDateHeader(Ljava/lang/String;)J
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeaderNames()Ljava/util/Enumeration;
.end method

.method public abstract getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
.end method

.method public abstract getIntHeader(Ljava/lang/String;)I
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getPathInfo()Ljava/lang/String;
.end method

.method public abstract getPathTranslated()Ljava/lang/String;
.end method

.method public abstract getQueryString()Ljava/lang/String;
.end method

.method public abstract getRequestURI()Ljava/lang/String;
.end method

.method public abstract getRequestURL()Ljava/lang/StringBuffer;
.end method

.method public abstract getRequestedSessionId()Ljava/lang/String;
.end method

.method public abstract getServletPath()Ljava/lang/String;
.end method

.method public abstract getSession()Ljavax/servlet/http/f;
.end method

.method public abstract getSession(Z)Ljavax/servlet/http/f;
.end method

.method public abstract isRequestedSessionIdFromCookie()Z
.end method

.method public abstract isRequestedSessionIdFromURL()Z
.end method

.method public abstract isRequestedSessionIdFromUrl()Z
.end method

.method public abstract isRequestedSessionIdValid()Z
.end method

.method public abstract isUserInRole(Ljava/lang/String;)Z
.end method

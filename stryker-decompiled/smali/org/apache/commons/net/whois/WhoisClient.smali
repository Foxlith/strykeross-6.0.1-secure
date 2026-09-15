.class public final Lorg/apache/commons/net/whois/WhoisClient;
.super Lorg/apache/commons/net/finger/FingerClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_HOST:Ljava/lang/String; = "whois.internic.net"

.field public static final DEFAULT_PORT:I = 0x2b


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/finger/FingerClient;-><init>()V

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/finger/FingerClient;->getInputStream(ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/finger/FingerClient;->query(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

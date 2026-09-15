.class public Lorg/apache/commons/net/discard/DiscardTCPClient;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PORT:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    return-object v0
.end method

.class public Lorg/apache/commons/net/PrintCommandListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/ProtocolCommandListener;


# instance fields
.field private final directionMarker:Z

.field private final eolMarker:C

.field private final nologin:Z

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Z)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZC)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZCZ)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Z)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZC)V
    .locals 1

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/PrintCommandListener;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZCZ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    iput-boolean p2, p0, Lorg/apache/commons/net/PrintCommandListener;->nologin:Z

    iput-char p3, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    iput-boolean p4, p0, Lorg/apache/commons/net/PrintCommandListener;->directionMarker:Z

    return-void
.end method

.method private getPrintableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-char v0, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lorg/apache/commons/net/PrintCommandListener;->eolMarker:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->directionMarker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->nologin:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " *******"

    if-nez v1, :cond_2

    const-string v1, "USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/PrintCommandListener;->getPrintableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/net/PrintCommandListener;->directionMarker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/ProtocolCommandEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/commons/net/PrintCommandListener;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

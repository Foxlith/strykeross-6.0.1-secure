.class public Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "SourceFile"


# static fields
.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1


# instance fields
.field private final termType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    iput-object p1, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .locals 6

    .line 2
    const/16 v1, 0x18

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    iput-object p1, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    iget-object p2, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    aget v2, p1, v1

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1

    aget p1, p1, v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    aput v3, p1, v1

    aput v1, p1, v0

    :goto_0
    iget-object p2, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_0

    add-int/lit8 p2, v1, 0x2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput v0, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

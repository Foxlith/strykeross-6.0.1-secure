.class public abstract Lcom/stryker/terminal/backend/TerminalOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clipboardText(Ljava/lang/String;)V
.end method

.method public abstract onBell()V
.end method

.method public abstract onColorsChanged()V
.end method

.method public abstract titleChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final write(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/stryker/terminal/backend/TerminalOutput;->write([BII)V

    return-void
.end method

.method public abstract write([BII)V
.end method

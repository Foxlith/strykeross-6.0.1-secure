.class public Lcom/stryker/terminal/bridge/SessionId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CURRENT_SESSION:Lcom/stryker/terminal/bridge/SessionId;

.field public static final NEW_SESSION:Lcom/stryker/terminal/bridge/SessionId;


# instance fields
.field private final sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "new"

    invoke-static {v0}, Lcom/stryker/terminal/bridge/SessionId;->of(Ljava/lang/String;)Lcom/stryker/terminal/bridge/SessionId;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/bridge/SessionId;->NEW_SESSION:Lcom/stryker/terminal/bridge/SessionId;

    const-string v0, "current"

    invoke-static {v0}, Lcom/stryker/terminal/bridge/SessionId;->of(Ljava/lang/String;)Lcom/stryker/terminal/bridge/SessionId;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/bridge/SessionId;->CURRENT_SESSION:Lcom/stryker/terminal/bridge/SessionId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/bridge/SessionId;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/stryker/terminal/bridge/SessionId;
    .locals 1

    new-instance v0, Lcom/stryker/terminal/bridge/SessionId;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/bridge/SessionId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/stryker/terminal/bridge/SessionId;

    iget-object v0, p0, Lcom/stryker/terminal/bridge/SessionId;->sessionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/stryker/terminal/bridge/SessionId;->sessionId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/bridge/SessionId;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/bridge/SessionId;->sessionId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TerminalSession { id = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/stryker/terminal/bridge/SessionId;->sessionId:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, " }"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

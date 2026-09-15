.class final Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairTerminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Line"
.end annotation


# instance fields
.field final body:Ljava/lang/String;

.field final host:Ljava/lang/String;

.field final tag:Ljava/lang/String;

.field final timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->timestamp:Ljava/lang/String;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->host:Ljava/lang/String;

    iput-object p4, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->body:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;
    .locals 8

    const-string v0, "INFO"

    const-string v1, ""

    if-nez p0, :cond_0

    new-instance p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    new-instance v2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;

    invoke-direct {v2, v1, v0, v1, p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/16 v6, 0x5d

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v5, :cond_7

    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v2, :cond_5

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object p0, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    :goto_0
    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v7, v2, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    move-object p0, v1

    :goto_1
    new-instance v2, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_7
    :goto_2
    new-instance v4, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v3, v0, v1, p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

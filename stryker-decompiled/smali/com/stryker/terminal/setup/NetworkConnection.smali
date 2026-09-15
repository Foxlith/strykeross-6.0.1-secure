.class public final Lcom/stryker/terminal/setup/NetworkConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/setup/SourceConnection;


# instance fields
.field private connection:Ljava/net/HttpURLConnection;

.field private final sourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sourceUrl"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/setup/NetworkConnection;->sourceUrl:Ljava/lang/String;

    return-void
.end method

.method private final openHttpConnection()Ljava/net/HttpURLConnection;
    .locals 4

    sget-object v0, Lcom/stryker/terminal/setup/SetupHelper;->INSTANCE:Lcom/stryker/terminal/setup/SetupHelper;

    invoke-virtual {v0}, Lcom/stryker/terminal/setup/SetupHelper;->determineArchName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stryker/terminal/setup/NetworkConnection;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/boot/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/setup/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/setup/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/stryker/terminal/setup/NetworkConnection;->openHttpConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/setup/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/stryker/terminal/setup/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/setup/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "connection!!.inputStream"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/setup/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

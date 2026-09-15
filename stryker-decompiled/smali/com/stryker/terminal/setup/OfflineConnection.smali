.class public abstract Lcom/stryker/terminal/setup/OfflineConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/setup/SourceConnection;


# instance fields
.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/setup/OfflineConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/setup/OfflineConnection;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/setup/OfflineConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/setup/OfflineConnection;->inputStream:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/setup/OfflineConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSize()I
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/setup/OfflineConnection;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
.end method

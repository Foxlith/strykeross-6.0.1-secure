.class public Lcom/stryker/terminal/setup/LocalFileConnection;
.super Lcom/stryker/terminal/setup/OfflineUriConnection;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/setup/OfflineUriConnection;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

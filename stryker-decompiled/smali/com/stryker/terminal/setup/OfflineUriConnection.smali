.class public Lcom/stryker/terminal/setup/OfflineUriConnection;
.super Lcom/stryker/terminal/setup/OfflineConnection;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/setup/OfflineConnection;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/setup/OfflineUriConnection;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/stryker/terminal/setup/OfflineUriConnection;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public openInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/setup/OfflineUriConnection;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/setup/OfflineUriConnection;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

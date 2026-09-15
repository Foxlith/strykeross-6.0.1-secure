.class public final Lg4/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/zalexdev/stryker/searchsploit/ExploitWebview;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/searchsploit/ExploitWebview;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg4/b;->b:Lcom/zalexdev/stryker/searchsploit/ExploitWebview;

    .line 2
    .line 3
    iput-object p2, p0, Lg4/b;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "exploit-db.com/exploits/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg4/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg4/b;->b:Lcom/zalexdev/stryker/searchsploit/ExploitWebview;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

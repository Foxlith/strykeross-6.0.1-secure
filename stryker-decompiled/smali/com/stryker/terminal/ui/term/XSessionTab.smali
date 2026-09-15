.class public final Lcom/stryker/terminal/ui/term/XSessionTab;
.super Lcom/stryker/terminal/ui/term/NeoTab;
.source "SourceFile"


# instance fields
.field private session:Lcom/stryker/terminal/component/session/XSession;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTab;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getSession()Lcom/stryker/terminal/component/session/XSession;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/XSessionTab;->session:Lcom/stryker/terminal/component/session/XSession;

    return-object v0
.end method

.method public final getSessionData()Lcom/stryker/terminal/component/session/XSessionData;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/XSessionTab;->session:Lcom/stryker/terminal/component/session/XSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSession;->getMSessionData()Lcom/stryker/terminal/component/session/XSessionData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTab;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/XSessionTab;->session:Lcom/stryker/terminal/component/session/XSession;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSession;->updateScreenOrientation()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/ui/term/NeoTab;->onDestroy()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/XSessionTab;->session:Lcom/stryker/terminal/component/session/XSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSession;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/XSessionTab;->session:Lcom/stryker/terminal/component/session/XSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSession;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/stryker/terminal/ui/term/NeoTab;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/ui/term/NeoTab;->onResume()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/XSessionTab;->session:Lcom/stryker/terminal/component/session/XSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSession;->onResume()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTab;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/XSessionTab;->onPause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/XSessionTab;->onResume()V

    :goto_0
    return-void
.end method

.method public final setSession(Lcom/stryker/terminal/component/session/XSession;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/XSessionTab;->session:Lcom/stryker/terminal/component/session/XSession;

    return-void
.end method

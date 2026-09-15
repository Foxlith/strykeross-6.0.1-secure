.class public Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;
.super Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

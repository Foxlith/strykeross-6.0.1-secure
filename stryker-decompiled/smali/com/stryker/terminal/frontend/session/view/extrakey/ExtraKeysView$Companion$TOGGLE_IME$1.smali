.class public final Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion$TOGGLE_IME$1;
.super Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "\u2328"

    invoke-direct {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lw5/e;->b()Lw5/e;

    move-result-object p1

    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/ToggleImeEvent;

    invoke-direct {v0}, Lcom/stryker/terminal/frontend/session/terminal/ToggleImeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lw5/e;->e(Ljava/lang/Object;)V

    return-void
.end method

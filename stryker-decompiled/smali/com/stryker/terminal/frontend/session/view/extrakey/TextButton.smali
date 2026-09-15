.class public Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;
.super Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;
.source "SourceFile"


# instance fields
.field private final withEnter:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "text"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;-><init>()V

    iput-boolean p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;->withEnter:Z

    sget-object p2, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;->solveString(Ljava/lang/String;)Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->setButtonKeys(Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;)V

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->setDisplayText(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/f;)V
    .locals 0

    .line 2
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getWithEnter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;->withEnter:Z

    return v0
.end method

.method public makeButton(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/widget/Button;
    .locals 1

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->getButtonKeys()Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;

    invoke-virtual {v2, p1, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;->sendKey(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;->withEnter:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;

    const-string v1, "\n"

    invoke-virtual {v0, p1, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;->sendKey(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

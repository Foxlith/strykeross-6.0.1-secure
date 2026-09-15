.class final Lcom/stryker/terminal/utils/UtilsKt$runApt$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/utils/UtilsKt;->runApt(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/p;"
    }
.end annotation


# instance fields
.field final synthetic $autoClose:Z

.field final synthetic $block:Lj5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/l;"
        }
    .end annotation
.end field

.field final synthetic $this_runApt:Landroid/content/Context;


# direct methods
.method public constructor <init>(ZLj5/l;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lj5/l;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;->$autoClose:Z

    iput-object p2, p0, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;->$block:Lj5/l;

    iput-object p3, p0, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;->$this_runApt:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    check-cast p2, Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;->invoke(Lcom/stryker/terminal/frontend/floating/TerminalDialog;Lcom/stryker/terminal/backend/TerminalSession;)V

    sget-object p1, Lw4/h;->a:Lw4/h;

    return-object p1
.end method

.method public final invoke(Lcom/stryker/terminal/frontend/floating/TerminalDialog;Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/stryker/terminal/backend/TerminalSession;->getExitStatus()I

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;->$autoClose:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->dismiss()Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    :cond_0
    iget-object p2, p0, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;->$block:Lj5/l;

    .line 2
    new-instance v0, Lw4/e;

    invoke-direct {v0, p1}, Lw4/e;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p2, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;->$this_runApt:Landroid/content/Context;

    sget v0, Lcom/stryker/terminal/R$string;->error:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->setTitle(Ljava/lang/String;)Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    iget-object p1, p0, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;->$block:Lj5/l;

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 4
    new-instance v0, Lw4/d;

    invoke-direct {v0, p2}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 5
    new-instance p2, Lw4/e;

    invoke-direct {p2, v0}, Lw4/e;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1, p2}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

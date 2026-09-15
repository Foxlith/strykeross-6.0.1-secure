.class public final Lcom/stryker/terminal/ui/term/TermTab;
.super Lcom/stryker/terminal/ui/term/NeoTab;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/ui/term/TermTab$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/ui/term/TermTab$Companion;

.field private static final PARAMETER_SHOW_EKS:Ljava/lang/String;


# instance fields
.field private termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/ui/term/TermTab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/ui/term/TermTab$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/ui/term/TermTab;->Companion:Lcom/stryker/terminal/ui/term/TermTab$Companion;

    const-string v0, "show_eks"

    sput-object v0, Lcom/stryker/terminal/ui/term/TermTab;->PARAMETER_SHOW_EKS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTab;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-direct {p1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    return-void
.end method

.method public static final synthetic access$getPARAMETER_SHOW_EKS$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/ui/term/TermTab;->PARAMETER_SHOW_EKS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->cleanup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public final getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    return-object v0
.end method

.method public final getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final onFullScreenModeChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/TermTab;->resetAutoCompleteStatus()V

    return-void
.end method

.method public requireClose()V
    .locals 2

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/TermTab;->requireHideIme()V

    invoke-static {}, Lw5/e;->b()Lw5/e;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/TabCloseEvent;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/frontend/session/terminal/TabCloseEvent;-><init>(Lcom/stryker/terminal/ui/term/TermTab;)V

    invoke-virtual {v0, v1}, Lw5/e;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public requireCreateNew()V
    .locals 2

    invoke-static {}, Lw5/e;->b()Lw5/e;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/CreateNewSessionEvent;

    invoke-direct {v1}, Lcom/stryker/terminal/frontend/session/terminal/CreateNewSessionEvent;-><init>()V

    invoke-virtual {v0, v1}, Lw5/e;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public requireFinishAutoCompletion()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getOnAutoCompleteListener()Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;->onFinishCompletion()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requireHideIme()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v1, v2}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public requireOnSessionFinished()V
    .locals 0

    return-void
.end method

.method public requirePaste()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->pasteFromClipboard()V

    :cond_0
    return-void
.end method

.method public requireSwitchTo(I)V
    .locals 2

    invoke-static {}, Lw5/e;->b()Lw5/e;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/SwitchIndexedSessionEvent;

    invoke-direct {v1, p1}, Lcom/stryker/terminal/frontend/session/terminal/SwitchIndexedSessionEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lw5/e;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public requireSwitchToNext()V
    .locals 3

    invoke-static {}, Lw5/e;->b()Lw5/e;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lw5/e;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public requireSwitchToPrevious()V
    .locals 3

    invoke-static {}, Lw5/e;->b()Lw5/e;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lw5/e;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public requireToggleFullScreen()V
    .locals 2

    invoke-static {}, Lw5/e;->b()Lw5/e;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/ToggleFullScreenEvent;

    invoke-direct {v1}, Lcom/stryker/terminal/frontend/session/terminal/ToggleFullScreenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lw5/e;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public requireUpdateTitle(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/Tab;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lw5/e;->b()Lw5/e;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/TitleChangedEvent;

    invoke-direct {v1, p1}, Lcom/stryker/terminal/frontend/session/terminal/TitleChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lw5/e;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getViewClient()Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->updateExtraKeys$default(Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final resetAutoCompleteStatus()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getOnAutoCompleteListener()Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;->onCleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->setOnAutoCompleteListener(Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;)V

    return-void
.end method

.method public final resetStatus()V
    .locals 1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/TermTab;->resetAutoCompleteStatus()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->updateButtons()V

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->updateSize()V

    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->onScreenUpdated()V

    :cond_2
    return-void
.end method

.method public final setTermData(Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    return-void
.end method

.method public final setToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/TermTab;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public final updateColorScheme()V
    .locals 5

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    iget-object v1, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v1

    iget-object v2, p0, Lcom/stryker/terminal/ui/term/TermTab;->termData:Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    invoke-virtual {v2}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getCurrentColorScheme()Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->applyColorScheme(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V

    return-void
.end method

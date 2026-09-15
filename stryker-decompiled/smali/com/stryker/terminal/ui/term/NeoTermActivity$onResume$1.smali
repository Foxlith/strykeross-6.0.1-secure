.class public final Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/mrapp/android/tabswitcher/TabSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/term/NeoTermActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->onSwitcherShown$lambda$0(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V

    return-void
.end method

.method private static final onSwitcherShown$lambda$0(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAllTabsRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 1

    const-string v0, "tabSwitcher"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tabs"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "animation"

    invoke-static {p3, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectionChanged(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    const-string p2, "tabSwitcher"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p3, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p3}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {p3}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p2

    invoke-static {p2}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/config/NeoPreference;->storeCurrentSession(Lcom/stryker/terminal/backend/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public onSwitcherHidden(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 1

    const-string v0, "tabSwitcher"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$color;->colorPrimary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public onSwitcherShown(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 3

    const-string v0, "tabSwitcher"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$drawable;->ic_add_box_white_24dp:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getAddSessionListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    new-instance v1, Lcom/stryker/terminal/ui/term/e;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/stryker/terminal/ui/term/e;-><init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onTabAdded(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    const-string p2, "tabSwitcher"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tab"

    invoke-static {p3, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "animation"

    invoke-static {p4, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->update_colors()V

    return-void
.end method

.method public onTabRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    const-string p2, "tabSwitcher"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tab"

    invoke-static {p3, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "animation"

    invoke-static {p4, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p3, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stryker/terminal/ui/term/SessionRemover;->INSTANCE:Lcom/stryker/terminal/ui/term/SessionRemover;

    iget-object p2, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-static {p2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->access$getTermService$p(Lcom/stryker/terminal/ui/term/NeoTermActivity;)Lcom/stryker/terminal/services/NeoTermService;

    move-result-object p2

    check-cast p3, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p1, p2, p3}, Lcom/stryker/terminal/ui/term/SessionRemover;->removeSession(Lcom/stryker/terminal/services/NeoTermService;Lcom/stryker/terminal/ui/term/TermTab;)V

    goto :goto_0

    :cond_0
    instance-of p1, p3, Lcom/stryker/terminal/ui/term/XSessionTab;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/stryker/terminal/ui/term/SessionRemover;->INSTANCE:Lcom/stryker/terminal/ui/term/SessionRemover;

    iget-object p2, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-static {p2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->access$getTermService$p(Lcom/stryker/terminal/ui/term/NeoTermActivity;)Lcom/stryker/terminal/services/NeoTermService;

    move-result-object p2

    check-cast p3, Lcom/stryker/terminal/ui/term/XSessionTab;

    invoke-virtual {p1, p2, p3}, Lcom/stryker/terminal/ui/term/SessionRemover;->removeXSession(Lcom/stryker/terminal/services/NeoTermService;Lcom/stryker/terminal/ui/term/XSessionTab;)V

    :cond_1
    :goto_0
    return-void
.end method

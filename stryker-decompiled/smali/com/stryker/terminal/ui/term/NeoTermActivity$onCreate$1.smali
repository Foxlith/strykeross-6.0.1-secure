.class public final Lcom/stryker/terminal/ui/term/NeoTermActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/utils/FullScreenHelper$KeyBoardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/term/NeoTermActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardChange(ZI)V
    .locals 1

    iget-object p2, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p2

    instance-of p2, p2, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.stryker.terminal.ui.term.TermTab"

    invoke-static {p2, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/stryker/terminal/ui/term/TermTab;

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p2}, Lcom/stryker/terminal/ui/term/TermTab;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p2, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->access$toggleToolbar(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroidx/appcompat/widget/Toolbar;Z)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onCreate$1;->this$0:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->update_colors()V

    :cond_0
    return-void
.end method

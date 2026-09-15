.class final Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->showItemEditor(Lcom/stryker/terminal/ui/customize/ColorItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/l;"
    }
.end annotation


# instance fields
.field final synthetic $model:Lcom/stryker/terminal/ui/customize/ColorItem;

.field final synthetic this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->$model:Lcom/stryker/terminal/ui/customize/ColorItem;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lw4/h;->a:Lw4/h;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    .line 2
    const-string v0, "newColor"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->$model:Lcom/stryker/terminal/ui/customize/ColorItem;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->setColorValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->getAdapter()Lcom/stryker/terminal/ui/customize/ColorItemAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-virtual {v0}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->getAdapter()Lcom/stryker/terminal/ui/customize/ColorItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;->getColorList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->$model:Lcom/stryker/terminal/ui/customize/ColorItem;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-static {p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->access$getEditingColorScheme$p(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object p1

    const-string v0, "editingColorScheme"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->$model:Lcom/stryker/terminal/ui/customize/ColorItem;

    invoke-virtual {v2}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorType()I

    move-result v2

    iget-object v3, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->$model:Lcom/stryker/terminal/ui/customize/ColorItem;

    invoke-virtual {v3}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setColor(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-static {p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->access$getColorSchemeComponent$p(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    move-result-object p1

    iget-object v2, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-virtual {v2}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object v2

    iget-object v3, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-static {v3}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->access$getEditingColorScheme$p(Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;)Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2, v1, v3}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->applyColorScheme(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity$showItemEditor$applyColor$1;->this$0:Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->setChanged(Z)V

    return-void

    :cond_0
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1
.end method

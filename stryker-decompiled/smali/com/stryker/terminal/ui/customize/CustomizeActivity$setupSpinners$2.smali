.class public final Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/customize/CustomizeActivity;->setupSpinners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

.field final synthetic this$0:Lcom/stryker/terminal/ui/customize/CustomizeActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/customize/CustomizeActivity;Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->this$0:Lcom/stryker/terminal/ui/customize/CustomizeActivity;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->$colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->this$0:Lcom/stryker/terminal/ui/customize/CustomizeActivity;

    const-class p3, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->this$0:Lcom/stryker/terminal/ui/customize/CustomizeActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p2}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->$colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getColorScheme(Ljava/lang/String;)Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object p2

    iget-object p3, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->$colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    iget-object p4, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->this$0:Lcom/stryker/terminal/ui/customize/CustomizeActivity;

    invoke-virtual {p4}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    move-result-object p4

    iget-object p5, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->this$0:Lcom/stryker/terminal/ui/customize/CustomizeActivity;

    invoke-virtual {p5}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    move-result-object p5

    invoke-virtual {p3, p4, p5, p2}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->applyColorScheme(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V

    iget-object p2, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;->$colorSchemeComponent:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->setCurrentColorScheme(Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

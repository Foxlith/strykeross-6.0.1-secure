.class public final Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CandidateViewHolder"
.end annotation


# instance fields
.field private final description:Landroid/widget/TextView;

.field private final display:Landroid/widget/TextView;

.field private final splitView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    const-string v0, "rootView"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/stryker/terminal/R$id;->complete_display:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "rootView.findViewById<Te\u2026w>(R.id.complete_display)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateViewHolder;->display:Landroid/widget/TextView;

    sget v1, Lcom/stryker/terminal/R$id;->complete_description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView.findViewById<Te\u2026.id.complete_description)"

    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateViewHolder;->description:Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$id;->complete_split:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "rootView.findViewById(R.id.complete_split)"

    invoke-static {p1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateViewHolder;->splitView:Landroid/view/View;

    sget-object p1, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-class v4, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v2, v3}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getCurrentColorScheme()Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getForegroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stryker/terminal/backend/TerminalColors;->parse(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final getDescription()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateViewHolder;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDisplay()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateViewHolder;->display:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getSplitView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateViewHolder;->splitView:Landroid/view/View;

    return-object v0
.end method

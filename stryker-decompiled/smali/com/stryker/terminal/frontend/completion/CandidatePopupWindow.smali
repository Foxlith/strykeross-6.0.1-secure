.class public final Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateAdapter;,
        Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateViewHolder;
    }
.end annotation


# instance fields
.field private candidateAdapter:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateAdapter;

.field private candidateListView:Landroid/widget/ListView;

.field private candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private onCandidateSelectedListener:Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private wantsToFinish:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->createPopupWindow$lambda$0(Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private final createPopupWindow()Landroid/widget/PopupWindow;
    .locals 5

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/R$layout;->popup_auto_complete:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/R$id;->popup_complete_candidate_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    new-instance v3, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateAdapter;

    invoke-direct {v3, p0}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateAdapter;-><init>(Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;)V

    iput-object v3, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidateAdapter:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lh2/a;

    invoke-direct {v3, p0, v4}, Lh2/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v2, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidateListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method private static final createPopupWindow$lambda$0(Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidates:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/component/completion/CompletionCandidate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->onCandidateSelectedListener:Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;->onCandidateSelected(Lcom/stryker/terminal/component/completion/CompletionCandidate;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->wantsToFinish:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidateListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidateAdapter:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateAdapter;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidates:Ljava/util/List;

    return-void
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidates:Ljava/util/List;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getOnCandidateSelectedListener()Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->onCandidateSelectedListener:Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;

    return-object v0
.end method

.method public final isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setCandidates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidates:Ljava/util/List;

    return-void
.end method

.method public final setOnCandidateSelectedListener(Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->onCandidateSelectedListener:Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;

    return-void
.end method

.method public final show(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 4

    const-string v0, "terminalView"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->wantsToFinish:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->candidateAdapter:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow$CandidateAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/stryker/terminal/frontend/completion/MaxHeightView;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/stryker/terminal/frontend/completion/MaxHeightView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->setMaxHeight(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->getCursorAbsoluteX()I

    move-result v1

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->getCursorAbsoluteY()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_3
    return-void
.end method

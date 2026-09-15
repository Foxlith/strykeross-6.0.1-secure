.class public final Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;
.super Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder<",
        "Lcom/stryker/terminal/ui/customize/ColorItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorItemDesc:Landroid/widget/TextView;

.field private final colorItemName:Landroid/widget/TextView;

.field private final colorView:Landroid/view/View;

.field private final listener:Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;

.field private final rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->listener:Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;

    sget p2, Lcom/stryker/terminal/R$id;->color_item_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "rootView.findViewById(R.id.color_item_name)"

    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->colorItemName:Landroid/widget/TextView;

    sget p2, Lcom/stryker/terminal/R$id;->color_item_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "rootView.findViewById(R.id.color_item_description)"

    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->colorItemDesc:Landroid/widget/TextView;

    sget p2, Lcom/stryker/terminal/R$id;->color_item_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView.findViewById(R.id.color_item_view)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->colorView:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;Lcom/stryker/terminal/ui/customize/ColorItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->performBind$lambda$0(Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;Lcom/stryker/terminal/ui/customize/ColorItem;Landroid/view/View;)V

    return-void
.end method

.method private static final performBind$lambda$0(Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;Lcom/stryker/terminal/ui/customize/ColorItem;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->listener:Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;

    invoke-interface {p0, p1}, Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;->onModelClicked(Lcom/stryker/terminal/ui/customize/ColorItem;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic performBind(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/stryker/terminal/ui/customize/ColorItem;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->performBind(Lcom/stryker/terminal/ui/customize/ColorItem;)V

    return-void
.end method

.method public performBind(Lcom/stryker/terminal/ui/customize/ColorItem;)V
    .locals 3

    .line 2
    const-string v0, "item"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->rootView:Landroid/view/View;

    new-instance v1, Lcom/google/android/material/snackbar/a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->colorItemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->colorItemDesc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stryker/terminal/backend/TerminalColors;->parse(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->colorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;->colorItemDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

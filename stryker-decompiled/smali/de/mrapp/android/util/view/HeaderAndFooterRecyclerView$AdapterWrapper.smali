.class Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$FooterViewHolder;,
        Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/k0;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FOOTER:I = 0x10e0

.field private static final VIEW_TYPE_HEADER:I = 0x10df


# instance fields
.field private final encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

.field final synthetic this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;


# direct methods
.method public constructor <init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;Landroidx/recyclerview/widget/k0;)V
    .locals 0

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    const-string p1, "The adapter may not be null"

    invoke-static {p2, p1}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->createDataObserver()Landroidx/recyclerview/widget/m0;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/k0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    return-void
.end method

.method private createDataObserver()Landroidx/recyclerview/widget/m0;
    .locals 1

    new-instance v0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$1;-><init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;)V

    return-object v0
.end method


# virtual methods
.method public getEncapsulatedAdapter()Landroidx/recyclerview/widget/k0;
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getFooterViewsCount()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/16 p1, 0x10df

    return p1

    :cond_0
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/k0;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_1
    const/16 p1, 0x10e0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 2

    instance-of v0, p1, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$HeaderViewHolder;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-static {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->access$000(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$FooterViewHolder;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-static {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->access$100(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k0;->onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 3

    const/16 v0, 0x10df

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne p2, v0, :cond_0

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$HeaderViewHolder;-><init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_0
    const/16 v0, 0x10e0

    if-ne p2, v0, :cond_1

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$FooterViewHolder;-><init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_1
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k0;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;

    move-result-object p1

    return-object p1
.end method

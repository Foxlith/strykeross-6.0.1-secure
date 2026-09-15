.class public Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;
.super Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$Adapter<",
        "Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MAX_TAB_TEXT_LINES:I = 0x2


# instance fields
.field private mTabBackgroundResId:I

.field private mTabMaxWidth:I

.field private mTabMinWidth:I

.field private mTabOnScreenLimit:I

.field protected mTabPaddingBottom:I

.field protected mTabPaddingEnd:I

.field protected mTabPaddingStart:I

.field protected mTabPaddingTop:I

.field protected mTabSelectedTextColor:I

.field protected mTabSelectedTextColorSet:Z

.field protected mTabTextAppearance:I


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$Adapter;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public createLayoutParamsForTabs()Landroidx/recyclerview/widget/x0;
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/x0;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/x0;-><init>(II)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$Adapter;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lj1/a;

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->onBindViewHolder(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;I)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$Adapter;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lj1/a;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;
    .locals 5

    new-instance p2, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$TabTextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$TabTextView;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabSelectedTextColorSet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iget v1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabSelectedTextColor:I

    invoke-virtual {p2, v0, v1}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$TabTextView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabPaddingStart:I

    iget v1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabPaddingTop:I

    iget v2, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabPaddingEnd:I

    iget v3, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabPaddingBottom:I

    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p2, v0, v1, v2, v3}, Landroidx/core/view/l0;->k(Landroid/view/View;IIII)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabTextAppearance:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/m1;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabOnScreenLimit:I

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabOnScreenLimit:I

    div-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabMaxWidth:I

    if-lez p1, :cond_2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    iget p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabMinWidth:I

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabTextAppearance:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/m1;->setTextAppearance(Landroid/content/Context;I)V

    iget-boolean p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabSelectedTextColorSet:Z

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iget v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabSelectedTextColor:I

    invoke-virtual {p2, p1, v0}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$TabTextView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabBackgroundResId:I

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabBackgroundResId:I

    invoke-static {p1, v0}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/m1;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->createLayoutParamsForTabs()Landroidx/recyclerview/widget/x0;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter$ViewHolder;-><init>(Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public setTabBackgroundResId(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabBackgroundResId:I

    return-void
.end method

.method public setTabMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabMaxWidth:I

    return-void
.end method

.method public setTabMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabMinWidth:I

    return-void
.end method

.method public setTabOnScreenLimit(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabOnScreenLimit:I

    return-void
.end method

.method public setTabPadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabPaddingStart:I

    iput p2, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabPaddingTop:I

    iput p3, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabPaddingEnd:I

    iput p4, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabPaddingBottom:I

    return-void
.end method

.method public setTabSelectedTextColor(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabSelectedTextColorSet:Z

    iput p2, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabSelectedTextColor:I

    return-void
.end method

.method public setTabTextAppearance(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$DefaultAdapter;->mTabTextAppearance:I

    return-void
.end method

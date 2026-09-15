.class public final Lcom/google/android/material/tabs/TabLayoutMediator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;,
        Lcom/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;,
        Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;
    }
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/k0;"
        }
    .end annotation
.end field

.field private attached:Z

.field private final autoRefresh:Z

.field private onPageChangeCallback:Lcom/google/android/material/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

.field private onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field private pagerAdapterObserver:Landroidx/recyclerview/widget/m0;

.field private final smoothScroll:Z

.field private final tabConfigurationStrategy:Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;

.field private final tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 6

    .line 2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->autoRefresh:Z

    iput-boolean p4, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->smoothScroll:Z

    iput-object p5, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabConfigurationStrategy:Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->attached:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/k0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->attached:Z

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/google/android/material/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->onPageChangeCallback:Lcom/google/android/material/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/b;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 41
    .line 42
    iget-boolean v3, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->smoothScroll:Z

    .line 43
    .line 44
    invoke-direct {v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager2/widget/ViewPager2;Z)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->autoRefresh:Z

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;-><init>(Lcom/google/android/material/tabs/TabLayoutMediator;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->pagerAdapterObserver:Landroidx/recyclerview/widget/m0;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/k0;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/k0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string v1, "TabLayoutMediator attached before ViewPager2 has an adapter"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string v1, "TabLayoutMediator is already attached"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method

.method public detach()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->autoRefresh:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/k0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->pagerAdapterObserver:Landroidx/recyclerview/widget/m0;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->pagerAdapterObserver:Landroidx/recyclerview/widget/m0;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->onPageChangeCallback:Lcom/google/android/material/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/b;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->onTabSelectedListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->onPageChangeCallback:Lcom/google/android/material/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/k0;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->attached:Z

    .line 45
    .line 46
    return-void
.end method

.method public isAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->attached:Z

    return v0
.end method

.method public populateTabsFromPagerAdapter()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/k0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabConfigurationStrategy:Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;

    invoke-interface {v4, v3, v2}, Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;->onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayoutMediator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    :cond_1
    return-void
.end method

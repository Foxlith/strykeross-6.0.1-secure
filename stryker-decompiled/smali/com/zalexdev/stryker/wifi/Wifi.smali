.class public Lcom/zalexdev/stryker/wifi/Wifi;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic K:I


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Ll4/c;

.field public C:Lo4/f0;

.field public D:Ljava/util/ArrayList;

.field public E:Landroidx/recyclerview/widget/RecyclerView;

.field public F:Lo4/u;

.field public final G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public H:Ljava/lang/Thread;

.field public I:Ljava/lang/Thread;

.field public J:Lo4/e0;

.field public a:Ljava/util/ArrayList;

.field public b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public c:Lcom/airbnb/lottie/LottieAnimationView;

.field public d:Lcom/google/android/material/textview/MaterialTextView;

.field public e:Lcom/google/android/material/textview/MaterialTextView;

.field public f:Lcom/google/android/material/textview/MaterialTextView;

.field public g:Lcom/google/android/material/textview/MaterialTextView;

.field public h:Lcom/google/android/material/textview/MaterialTextView;

.field public i:Lcom/google/android/material/textview/MaterialTextView;

.field public j:Lcom/google/android/material/textview/MaterialTextView;

.field public k:Lcom/google/android/material/textview/MaterialTextView;

.field public l:Lcom/google/android/material/textview/MaterialTextView;

.field public m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public n:Lcom/google/android/material/card/MaterialCardView;

.field public p:Lcom/google/android/material/card/MaterialCardView;

.field public q:Ll4/l;

.field public r:Ljava/lang/String;

.field public s:Landroidx/fragment/app/a0;

.field public t:Landroid/content/Context;

.field public u:Lcom/google/android/material/button/MaterialButton;

.field public v:I

.field public w:Lcom/zalexdev/stryker/MainActivity;

.field public x:Lcom/nambimobile/widgets/efab/ExpandableFab;

.field public y:Ljava/util/ArrayList;

.field public z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->v:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->z:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->A:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static d(Lcom/zalexdev/stryker/wifi/Wifi;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v1, 0x7f120015

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->e(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 21
    .line 22
    const v2, 0x7f130728

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 29
    .line 30
    const v2, 0x7f130726

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 42
    .line 43
    const v2, 0x7f130680

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    .line 50
    .line 51
    new-instance v2, Lo4/v;

    .line 52
    .line 53
    const/4 v3, 0x7

    .line 54
    invoke-direct {v2, p0, v3}, Lo4/v;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 61
    .line 62
    const/16 v2, 0x8

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 68
    .line 69
    const v2, 0x7f13072f

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 76
    .line 77
    const v2, 0x7f130727

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->l:Lcom/google/android/material/textview/MaterialTextView;

    .line 84
    .line 85
    const-string v2, "0"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->x:Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->hide()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static i(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final e(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->n:Lcom/google/android/material/card/MaterialCardView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->p:Lcom/google/android/material/card/MaterialCardView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    new-instance v1, Ld4/d;

    const/16 v2, 0xc

    invoke-direct {v1, p0, p1, v2}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->x:Lcom/nambimobile/widgets/efab/ExpandableFab;

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->hide()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->v:I

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->e(Z)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_1

    const v2, 0x7f120023

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->d:Lcom/google/android/material/textview/MaterialTextView;

    const v2, 0x7f130595

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->e:Lcom/google/android/material/textview/MaterialTextView;

    const v2, 0x7f13071d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->i:Lcom/google/android/material/textview/MaterialTextView;

    const v2, 0x7f130731

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->f:Lcom/google/android/material/textview/MaterialTextView;

    const v2, 0x7f130734

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    const-string v2, "wlan_wifi"

    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->g:Lcom/google/android/material/textview/MaterialTextView;

    const-string v3, "\u2014"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->h:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    :cond_5
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lo4/z;

    invoke-direct {v2, p0, v0}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->H:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    const v1, 0x7f130730

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->f:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f130732

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->i:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->l:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->f:Lcom/google/android/material/textview/MaterialTextView;

    const v2, 0x7f130733

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->i:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->l:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "0"

    goto :goto_0
.end method

.method public final j()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->h:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    const-string v2, "\u2014"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getIs5hhz()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    move v4, v7

    goto :goto_3

    :cond_3
    move v3, v7

    :goto_3
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getChannel()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getChannel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v4, v3

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    const-string v1, "2.4 / 5"

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    const-string v1, "2.4"

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    const-string v1, "5"

    goto :goto_4

    :cond_8
    move-object v1, v2

    :goto_4
    iget-object v3, p0, Lcom/zalexdev/stryker/wifi/Wifi;->j:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->k:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0d0120

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    const p2, 0x7f0a0723

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->E:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a04f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const p2, 0x7f0a0556

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0a0561

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->d:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a0559

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->e:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a0673

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a0722

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->f:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a0714

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->g:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a0713

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->h:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a0721

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->i:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a070c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->j:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a070f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->k:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a0710

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->l:Lcom/google/android/material/textview/MaterialTextView;

    const p2, 0x7f0a071f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const p2, 0x7f0a0711

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->n:Lcom/google/android/material/card/MaterialCardView;

    const p2, 0x7f0a0718

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->p:Lcom/google/android/material/card/MaterialCardView;

    new-instance p2, Ll4/l;

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    invoke-direct {p2, v1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->u:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lo4/v;

    invoke-direct {v1, p0, v0}, Lo4/v;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/nambimobile/widgets/efab/ExpandableFab;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->x:Lcom/nambimobile/widgets/efab/ExpandableFab;

    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/ExpandableFab;->hide()V

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    move-object v1, p2

    check-cast v1, Lcom/zalexdev/stryker/MainActivity;

    iput-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->w:Lcom/zalexdev/stryker/MainActivity;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->E:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, -0x54b844

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lv/f;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lv/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Lg1/j;)V

    const p2, 0x7f0a0720

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v1, Lo4/v;

    invoke-direct {v1, p0, p3}, Lo4/v;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    const-string v1, "wlan_wifi"

    invoke-virtual {p2, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->g:Lcom/google/android/material/textview/MaterialTextView;

    const-string v2, "\u2014"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    move-object p2, v2

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->h:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->r:Ljava/lang/String;

    :cond_5
    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->w:Lcom/zalexdev/stryker/MainActivity;

    if-eqz p2, :cond_6

    .line 1
    iget-object p2, p2, Lcom/zalexdev/stryker/MainActivity;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->w:Lcom/zalexdev/stryker/MainActivity;

    .line 3
    iget-object p2, p2, Lcom/zalexdev/stryker/MainActivity;->g:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    .line 4
    new-instance p2, Lo4/u;

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    iget-object v3, p0, Lcom/zalexdev/stryker/wifi/Wifi;->a:Ljava/util/ArrayList;

    invoke-direct {p2, v1, v2, v3}, Lo4/u;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->F:Lo4/u;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->E:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->E:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zalexdev/stryker/wifi/Wifi;->F:Lo4/u;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    invoke-virtual {p0, p3}, Lcom/zalexdev/stryker/wifi/Wifi;->e(Z)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/wifi/Wifi;->j()V

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wifi/Wifi;->x:Lcom/nambimobile/widgets/efab/ExpandableFab;

    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/ExpandableFab;->show()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/wifi/Wifi;->h()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/zalexdev/stryker/wifi/Wifi;->g()V

    :goto_3
    const p2, 0x7f0a01e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/nambimobile/widgets/efab/FabOption;

    const p3, 0x7f0a01e5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/nambimobile/widgets/efab/FabOption;

    const v1, 0x7f0a01e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nambimobile/widgets/efab/FabOption;

    new-instance v2, Lo4/v;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lo4/v;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    invoke-virtual {p3, v2}, Lcom/nambimobile/widgets/efab/FabOption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    const-string v2, "wifi"

    invoke-virtual {p3, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p3}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ll4/k;

    const-string v4, "svc wifi enable"

    invoke-direct {v3, p3, v4, v0}, Ll4/k;-><init>(Ll4/l;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 8
    :cond_7
    new-instance p3, Lo4/v;

    const/4 v0, 0x3

    invoke-direct {p3, p0, v0}, Lo4/v;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    invoke-virtual {p2, p3}, Lcom/nambimobile/widgets/efab/FabOption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lo4/v;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lo4/v;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    invoke-virtual {v1, p2}, Lcom/nambimobile/widgets/efab/FabOption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->H:Ljava/lang/Thread;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->I:Ljava/lang/Thread;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    .line 23
    .line 24
    :catch_1
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->J:Lo4/e0;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Ll4/c;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    .line 30
    .line 31
    :catch_2
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->B:Ll4/c;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Ll4/c;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 36
    .line 37
    .line 38
    :catch_3
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->C:Lo4/f0;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Ll4/c;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 43
    .line 44
    .line 45
    :catch_4
    :cond_4
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wifi/Wifi;->c:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

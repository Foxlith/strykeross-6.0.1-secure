.class public Lcom/zalexdev/stryker/localnetwork/LocalMain;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic A:I


# instance fields
.field public a:Ll4/l;

.field public b:Landroid/content/Context;

.field public c:Landroidx/fragment/app/a0;

.field public d:Lcom/zalexdev/stryker/MainActivity;

.field public e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public g:Landroid/webkit/WebView;

.field public h:Lcom/google/android/material/card/MaterialCardView;

.field public i:Lcom/google/android/material/card/MaterialCardView;

.field public j:Lcom/airbnb/lottie/LottieAnimationView;

.field public k:Lcom/google/android/material/textview/MaterialTextView;

.field public l:Lcom/google/android/material/textview/MaterialTextView;

.field public m:Lcom/google/android/material/textview/MaterialTextView;

.field public n:Lcom/google/android/material/textview/MaterialTextView;

.field public p:Lcom/google/android/material/textview/MaterialTextView;

.field public q:Lcom/google/android/material/textview/MaterialTextView;

.field public r:Lcom/google/android/material/textview/MaterialTextView;

.field public s:Lcom/google/android/material/textview/MaterialTextView;

.field public t:Lcom/google/android/material/button/MaterialButton;

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:Lr3/t;

.field public w:Ljava/util/ArrayList;

.field public x:Z

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public z:Lr3/v;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->x:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d.%d.%d.%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final f()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0089

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    const v1, 0x7f0a0560

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0a055e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0a055f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f0a055d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f0a055a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0a055b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const v7, 0x7f0a055c

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    iget-object v9, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    const-string v10, "local_scan_target"

    invoke-virtual {v9, v10}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "24"

    if-eqz v9, :cond_3

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v2, v9, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    array-length v2, v9

    const/4 v11, 0x1

    if-le v2, v11, :cond_2

    aget-object v10, v9, v11

    :cond_2
    :goto_0
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->q:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/m1;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->q:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/m1;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v9, "\u2014"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_2
    new-instance v2, Lj2/i;

    const/4 v9, 0x7

    invoke-direct {v2, v0, v9}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/google/android/material/snackbar/a;

    const/16 v7, 0x15

    invoke-direct {v2, p0, v0, v7}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lr3/i;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lr3/i;-><init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/app/Dialog;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->d:Lcom/zalexdev/stryker/MainActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->d:Lcom/zalexdev/stryker/MainActivity;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->h:Ljava/util/ArrayList;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Ll4/l;->D()Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->d:Lcom/zalexdev/stryker/MainActivity;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iput-object v0, v1, Lcom/zalexdev/stryker/MainActivity;->h:Ljava/util/ArrayList;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iput-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->i:Lcom/google/android/material/card/MaterialCardView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->h:Lcom/google/android/material/card/MaterialCardView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->s:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->x:Z

    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    if-eqz v1, :cond_0

    const-string v2, "lan_last_scanning"

    invoke-virtual {v1, v2, v0}, Ll4/l;->b0(Ljava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->h:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->i:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f130340

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->l:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f13033f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f120009

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->n:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f130358

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->p:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->q:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->r:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->s:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f13035b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->x:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->i()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->z:Lr3/v;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v0}, Lr3/v;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->v:Lr3/t;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->d:Lcom/zalexdev/stryker/MainActivity;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/zalexdev/stryker/MainActivity;->h:Ljava/util/ArrayList;

    .line 51
    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->startScan()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->c:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "wifi"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->n:Lcom/google/android/material/textview/MaterialTextView;

    .line 28
    .line 29
    const v1, 0x7f130358

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, ""

    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    const-string v3, "\""

    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, "<unknown ssid>"

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    :cond_3
    const v1, 0x7f130356

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_4
    iget-object v3, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->n:Lcom/google/android/material/textview/MaterialTextView;

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 83
    .line 84
    const-string v3, "local_scan_target"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v3, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    .line 91
    .line 92
    if-eqz v3, :cond_6

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :goto_0
    const/4 v4, 0x0

    .line 100
    const/4 v5, -0x1

    .line 101
    if-nez v3, :cond_7

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const v6, 0x1010036

    .line 109
    .line 110
    .line 111
    filled-new-array {v6}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-eqz v6, :cond_8

    .line 124
    .line 125
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 126
    .line 127
    .line 128
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    goto :goto_3

    .line 135
    :cond_8
    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 136
    .line 137
    .line 138
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    goto :goto_1

    .line 140
    :goto_2
    if-eqz v1, :cond_a

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-nez v3, :cond_a

    .line 147
    .line 148
    const-string v3, "/"

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_a

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->q:Lcom/google/android/material/textview/MaterialTextView;

    .line 161
    .line 162
    aget-object v4, v0, v4

    .line 163
    .line 164
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 168
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    array-length v3, v0

    .line 175
    const/4 v5, 0x1

    .line 176
    if-le v3, v5, :cond_9

    .line 177
    .line 178
    aget-object v2, v0, v5

    .line 179
    .line 180
    :cond_9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->q:Lcom/google/android/material/textview/MaterialTextView;

    .line 191
    .line 192
    const v1, -0x54b844

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_a
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-eqz v0, :cond_b

    .line 209
    .line 210
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->q:Lcom/google/android/material/textview/MaterialTextView;

    .line 211
    .line 212
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 213
    .line 214
    invoke-static {v2}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->d(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 222
    .line 223
    iget v0, v0, Landroid/net/DhcpInfo;->netmask:I

    .line 224
    .line 225
    invoke-static {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->d(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->q:Lcom/google/android/material/textview/MaterialTextView;

    .line 233
    .line 234
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 238
    .line 239
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    :cond_b
    return-void

    .line 243
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    .line 245
    .line 246
    throw v0
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f13035c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->p:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f130359

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f130346

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->l:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f130330

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f13035a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->p:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f130357

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f13035b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->p:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f130358

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    const p3, 0x7f0d0084

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->c:Landroidx/fragment/app/a0;

    .line 20
    .line 21
    check-cast p2, Lcom/zalexdev/stryker/MainActivity;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->d:Lcom/zalexdev/stryker/MainActivity;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 p3, 0x1

    .line 28
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Ll4/l;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    .line 34
    .line 35
    invoke-direct {p2, v1}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->g()V

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0a036e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    .line 54
    const p2, 0x7f0a0373

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 64
    .line 65
    const p2, 0x7f0a036a

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 73
    .line 74
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j:Lcom/airbnb/lottie/LottieAnimationView;

    .line 75
    .line 76
    const p2, 0x7f0a0376

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k:Lcom/google/android/material/textview/MaterialTextView;

    .line 86
    .line 87
    const p2, 0x7f0a0377

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 95
    .line 96
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->l:Lcom/google/android/material/textview/MaterialTextView;

    .line 97
    .line 98
    const p2, 0x7f0a0375

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 106
    .line 107
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 108
    .line 109
    const p2, 0x7f0a0458

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 117
    .line 118
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 119
    .line 120
    const p2, 0x7f0a0659

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Landroid/webkit/WebView;

    .line 128
    .line 129
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->g:Landroid/webkit/WebView;

    .line 130
    .line 131
    const p2, 0x7f0a01fd

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 139
    .line 140
    const p2, 0x7f0a0368

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 148
    .line 149
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->h:Lcom/google/android/material/card/MaterialCardView;

    .line 150
    .line 151
    const p2, 0x7f0a036f

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 159
    .line 160
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->i:Lcom/google/android/material/card/MaterialCardView;

    .line 161
    .line 162
    const p2, 0x7f0a0426

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 170
    .line 171
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->n:Lcom/google/android/material/textview/MaterialTextView;

    .line 172
    .line 173
    const p2, 0x7f0a0427

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 181
    .line 182
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->p:Lcom/google/android/material/textview/MaterialTextView;

    .line 183
    .line 184
    const p2, 0x7f0a0423

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 192
    .line 193
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->q:Lcom/google/android/material/textview/MaterialTextView;

    .line 194
    .line 195
    const p2, 0x7f0a0428

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 203
    .line 204
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->r:Lcom/google/android/material/textview/MaterialTextView;

    .line 205
    .line 206
    const p2, 0x7f0a0422

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 214
    .line 215
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->s:Lcom/google/android/material/textview/MaterialTextView;

    .line 216
    .line 217
    const p2, 0x7f0a0425

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 225
    .line 226
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->t:Lcom/google/android/material/button/MaterialButton;

    .line 227
    .line 228
    iget-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    .line 230
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 231
    .line 232
    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 236
    .line 237
    .line 238
    iget-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    .line 240
    const/16 v1, 0x40

    .line 241
    .line 242
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 243
    .line 244
    .line 245
    new-instance p2, Lr3/t;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    .line 248
    .line 249
    iget-object v2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->c:Landroidx/fragment/app/a0;

    .line 250
    .line 251
    iget-object v3, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {p2}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 254
    .line 255
    .line 256
    const/4 v4, 0x0

    .line 257
    iput-object v4, p2, Lr3/t;->e:Landroid/app/Dialog;

    .line 258
    .line 259
    const-string v4, ""

    .line 260
    .line 261
    iput-object v4, p2, Lr3/t;->f:Ljava/lang/String;

    .line 262
    .line 263
    iput-object v1, p2, Lr3/t;->a:Landroid/content/Context;

    .line 264
    .line 265
    iput-object v2, p2, Lr3/t;->b:Landroid/app/Activity;

    .line 266
    .line 267
    iput-object v3, p2, Lr3/t;->c:Ljava/util/ArrayList;

    .line 268
    .line 269
    new-instance v2, Ll4/l;

    .line 270
    .line 271
    invoke-direct {v2, v1}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 272
    .line 273
    .line 274
    iput-object v2, p2, Lr3/t;->d:Ll4/l;

    .line 275
    .line 276
    iput-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->v:Lr3/t;

    .line 277
    .line 278
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    .line 280
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 281
    .line 282
    .line 283
    iget-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 284
    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const v2, 0x7f060316

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    const v2, -0x54b844

    .line 297
    .line 298
    .line 299
    filled-new-array {v1, v2}, [I

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 304
    .line 305
    .line 306
    iget-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 307
    .line 308
    new-instance v1, Lv/f;

    .line 309
    .line 310
    const/16 v2, 0xd

    .line 311
    .line 312
    invoke-direct {v1, p0, v2}, Lv/f;-><init>(Ljava/lang/Object;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Lg1/j;)V

    .line 316
    .line 317
    .line 318
    iget-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->t:Lcom/google/android/material/button/MaterialButton;

    .line 319
    .line 320
    new-instance v1, Lr3/u;

    .line 321
    .line 322
    invoke-direct {v1, p0, v0}, Lr3/u;-><init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    .line 327
    .line 328
    const p2, 0x7f0a0374

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    if-eqz p2, :cond_0

    .line 336
    .line 337
    new-instance v0, Lr3/u;

    .line 338
    .line 339
    invoke-direct {v0, p0, p3}, Lr3/u;-><init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    .line 344
    .line 345
    :cond_0
    const p2, 0x7f0a0424

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    const p3, 0x7f0a0429

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object p3

    .line 359
    if-eqz p2, :cond_1

    .line 360
    .line 361
    new-instance v0, Lr3/u;

    .line 362
    .line 363
    const/4 v1, 0x2

    .line 364
    invoke-direct {v0, p0, v1}, Lr3/u;-><init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    .line 369
    .line 370
    :cond_1
    if-eqz p3, :cond_2

    .line 371
    .line 372
    new-instance p2, Lr3/u;

    .line 373
    .line 374
    const/4 v0, 0x3

    .line 375
    invoke-direct {p2, p0, v0}, Lr3/u;-><init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->l()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->h()V

    .line 385
    .line 386
    .line 387
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->z:Lr3/v;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lr3/v;->l:Ljava/lang/Process;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->z:Lr3/v;

    invoke-virtual {v0}, Lr3/v;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->z:Lr3/v;

    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->g()V

    iget-object p1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->v:Lr3/t;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    iput-object p2, p1, Lr3/t;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->l()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->h()V

    iget-object p1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    const-string p2, "lan_last_scanning"

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->startScan()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->i()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j()V

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->x:Z

    iget-object p1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2, v0}, Ll4/l;->b0(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m()V

    :goto_1
    return-void
.end method

.method public final startScan()V
    .locals 5

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-object v1, v1, Ll4/l;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->c:Landroidx/fragment/app/a0;

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object v1, v1, Ll4/l;->c:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    :cond_1
    const/4 v1, 0x2

    .line 37
    :try_start_2
    new-array v1, v1, [Ljava/lang/String;

    .line 38
    .line 39
    aput-object v0, v1, v3

    .line 40
    .line 41
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 42
    .line 43
    aput-object v0, v1, v2

    .line 44
    .line 45
    const/16 v0, 0x7c

    .line 46
    .line 47
    invoke-static {v4, v1, v0}, Lv/g;->f(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :catch_2
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->z:Lr3/v;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    :try_start_3
    invoke-virtual {v0}, Lr3/v;->h()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    .line 60
    .line 61
    :catch_3
    :cond_4
    iput-boolean v2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->x:Z

    .line 62
    .line 63
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 64
    .line 65
    const-string v1, "lan_last_scanning"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->m()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 79
    .line 80
    const/16 v1, 0x6e

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lr3/v;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->c:Landroidx/fragment/app/a0;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    .line 102
    .line 103
    const-string v4, "wlan_scan"

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v0, p0, v1, v2, v3}, Lr3/v;-><init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->z:Lr3/v;

    .line 113
    .line 114
    return-void
.end method

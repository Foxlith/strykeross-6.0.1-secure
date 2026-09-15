.class public final synthetic Lj2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/MainActivity;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lu2/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/MainActivity;Landroid/widget/TextView;Lu2/a;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/e;->a:Lcom/zalexdev/stryker/MainActivity;

    iput-object p2, p0, Lj2/e;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lj2/e;->c:Lu2/a;

    iput-object p4, p0, Lj2/e;->d:Landroid/view/View;

    iput-object p5, p0, Lj2/e;->e:Landroid/view/View;

    iput-boolean p6, p0, Lj2/e;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lj2/e;->a:Lcom/zalexdev/stryker/MainActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lj2/e;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v2, p0, Lj2/e;->c:Lu2/a;

    .line 6
    .line 7
    iget-object v3, p0, Lj2/e;->d:Landroid/view/View;

    .line 8
    .line 9
    iget-object v4, p0, Lj2/e;->e:Landroid/view/View;

    .line 10
    .line 11
    iget-boolean v5, p0, Lj2/e;->f:Z

    .line 12
    .line 13
    sget-object v6, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_5

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v6, v2, Lu2/a;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    if-eqz v3, :cond_2

    .line 36
    .line 37
    :try_start_0
    iget v1, v2, Lu2/a;->b:I

    .line 38
    .line 39
    sget-object v6, Lx/g;->a:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    :cond_2
    sget-boolean v1, Lcom/zalexdev/stryker/MainActivity;->w:Z

    .line 53
    .line 54
    iget-boolean v3, v2, Lu2/a;->c:Z

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    if-eq v1, v3, :cond_3

    .line 58
    .line 59
    move v1, v6

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_0
    sput-boolean v3, Lcom/zalexdev/stryker/MainActivity;->w:Z

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-object v1, v0, Lcom/zalexdev/stryker/MainActivity;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0, v4, v1}, Lcom/zalexdev/stryker/MainActivity;->o(Landroid/view/View;Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    if-eqz v5, :cond_5

    .line 74
    .line 75
    iget-boolean v1, v2, Lu2/a;->c:Z

    .line 76
    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    iget-boolean v1, v0, Lcom/zalexdev/stryker/MainActivity;->c:Z

    .line 80
    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    iput-boolean v6, v0, Lcom/zalexdev/stryker/MainActivity;->c:Z

    .line 84
    .line 85
    new-instance v1, Lj2/a;

    .line 86
    .line 87
    const/16 v2, 0x8

    .line 88
    .line 89
    invoke-direct {v1, v0, v2}, Lj2/a;-><init>(Lcom/zalexdev/stryker/MainActivity;I)V

    .line 90
    .line 91
    .line 92
    const-wide/16 v2, 0xbb8

    .line 93
    .line 94
    invoke-virtual {v4, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_1
    return-void
.end method

.class public final synthetic Lh4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/widget/ProgressBar;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/ProgressBar;

.field public final synthetic g:Landroid/widget/ImageView;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;ZLandroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/i;->a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    iput-boolean p2, p0, Lh4/i;->b:Z

    iput-object p3, p0, Lh4/i;->c:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lh4/i;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lh4/i;->e:Landroid/widget/TextView;

    iput-object p6, p0, Lh4/i;->f:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lh4/i;->g:Landroid/widget/ImageView;

    iput-object p8, p0, Lh4/i;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lh4/i;->i:Landroid/view/View;

    iput-object p10, p0, Lh4/i;->j:Landroid/view/View;

    iput-object p11, p0, Lh4/i;->k:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 2
    .line 3
    iget-object v0, p0, Lh4/i;->a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 4
    .line 5
    iget-boolean v1, p0, Lh4/i;->b:Z

    .line 6
    .line 7
    iget-object v2, p0, Lh4/i;->c:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    iget-object v3, p0, Lh4/i;->d:Landroid/widget/ImageView;

    .line 10
    .line 11
    iget-object v4, p0, Lh4/i;->e:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iget-object v2, p0, Lh4/i;->f:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    iget-object v3, p0, Lh4/i;->g:Landroid/widget/ImageView;

    .line 23
    .line 24
    iget-object v4, p0, Lh4/i;->h:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x3

    .line 31
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    iget-object v1, p0, Lh4/i;->i:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lh4/i;->j:Landroid/view/View;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lh4/i;->k:Lcom/google/android/material/button/MaterialButton;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

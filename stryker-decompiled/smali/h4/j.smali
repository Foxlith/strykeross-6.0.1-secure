.class public final synthetic Lh4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

.field public final synthetic c:Landroid/widget/ProgressBar;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p8, p0, Lh4/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh4/j;->b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 7
    .line 8
    iput-object p2, p0, Lh4/j;->c:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    iput-object p3, p0, Lh4/j;->d:Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object p4, p0, Lh4/j;->e:Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p5, p0, Lh4/j;->f:Landroid/view/View;

    .line 15
    .line 16
    iput-object p6, p0, Lh4/j;->g:Landroid/view/View;

    .line 17
    .line 18
    iput-object p7, p0, Lh4/j;->h:Landroid/widget/TextView;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lh4/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lh4/j;->h:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v2, p0, Lh4/j;->e:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v3, p0, Lh4/j;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v4, p0, Lh4/j;->c:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    iget-object v5, p0, Lh4/j;->b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 12
    .line 13
    iget-object v6, p0, Lh4/j;->g:Landroid/view/View;

    .line 14
    .line 15
    iget-object v7, p0, Lh4/j;->f:Landroid/view/View;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v7, Landroid/widget/ProgressBar;

    .line 21
    .line 22
    check-cast v6, Landroid/widget/ImageView;

    .line 23
    .line 24
    sget v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-virtual {v5, v4, v3, v2, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {v5, v7, v6, v1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 36
    .line 37
    sget v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    invoke-virtual {v5, v4, v3, v2, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x8

    .line 44
    .line 45
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

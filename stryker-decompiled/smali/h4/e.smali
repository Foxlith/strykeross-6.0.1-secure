.class public final synthetic Lh4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/e;->a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    iput-object p2, p0, Lh4/e;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 2
    .line 3
    iget-object p1, p0, Lh4/e;->a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0a018b

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lh4/e;->b:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->g(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.class public final synthetic Li2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Li2/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Li2/d;->b:Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Li2/d;->a:I

    iget-object v1, p0, Li2/d;->b:Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->e(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {v1, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->h(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {v1, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->i(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

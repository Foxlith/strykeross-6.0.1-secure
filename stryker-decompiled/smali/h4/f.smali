.class public final synthetic Lh4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh4/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh4/f;->b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lh4/f;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lh4/f;->b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 15
    .line 16
    invoke-virtual {v0}, Ll4/l;->s0()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    .line 29
    .line 30
    const v3, 0x7f1305f9

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v2, v3}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    .line 41
    .line 42
    new-instance v2, Lh4/f;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v2, v1, v3}, Lh4/f;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 53
    .line 54
    iget-object v2, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->a:Landroidx/fragment/app/a0;

    .line 55
    .line 56
    const v3, 0x7f1305f7

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v2, v1}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Li2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/switchmaterial/SwitchMaterial;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/switchmaterial/SwitchMaterial;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Li2/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Li2/b;->b:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Li2/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Li2/b;->b:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-static {v1, p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->f(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    invoke-static {v1, p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->h(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    invoke-static {v1, p1}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;->d(Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

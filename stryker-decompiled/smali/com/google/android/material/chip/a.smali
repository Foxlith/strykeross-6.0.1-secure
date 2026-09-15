.class public final synthetic Lcom/google/android/material/chip/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/chip/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/chip/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    sget-object p1, Lk4/f;->g:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p1, 0x8

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast v1, Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 23
    .line 24
    iget-object p1, v1, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const-string p1, ""

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p1, v1, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-virtual {v1, p1}, Lcom/zalexdev/stryker/coremanger/CoreManager;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    check-cast v1, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;

    .line 50
    .line 51
    invoke-static {v1, p1, p2}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->e(Lcom/stryker/terminal/ui/settings/UiPrefsFragment;Landroid/widget/CompoundButton;Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_2
    check-cast v1, Lcom/google/android/material/chip/Chip;

    .line 56
    .line 57
    invoke-static {v1, p1, p2}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;Landroid/widget/CompoundButton;Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

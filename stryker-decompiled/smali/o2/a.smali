.class public final synthetic Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/checkbox/MaterialCheckBox;Lj2/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lo2/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo2/a;->b:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 7
    .line 8
    iput-object p2, p0, Lo2/a;->c:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lo2/a;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lo2/a;->c:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v1, p0, Lo2/a;->b:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget p1, Lcom/zalexdev/stryker/appintro/slides/Slide1;->d:I

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/appintro/slides/Slide1;->d:I

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    xor-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/appintro/slides/Slide1;->d:I

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    xor-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

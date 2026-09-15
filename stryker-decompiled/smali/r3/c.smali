.class public final synthetic Lr3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr3/t;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Device;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lr3/t;ZLcom/zalexdev/stryker/custom/Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/c;->a:Lr3/t;

    iput-boolean p2, p0, Lr3/c;->b:Z

    iput-object p3, p0, Lr3/c;->c:Lcom/zalexdev/stryker/custom/Device;

    iput p4, p0, Lr3/c;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr3/c;->a:Lr3/t;

    .line 2
    .line 3
    iget-boolean v1, p0, Lr3/c;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lr3/c;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 8
    .line 9
    iget v2, p0, Lr3/c;->d:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lr3/t;->c(Lcom/zalexdev/stryker/custom/Device;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 19
    .line 20
    iget-object v0, v0, Lr3/t;->a:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const v0, 0x7f13033a

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x7f130339

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/stryker/terminal/setup/a;

    .line 40
    .line 41
    const/4 v2, 0x6

    .line 42
    invoke-direct {v1, v2}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const v2, 0x104000a

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.class public final synthetic Lp2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lp2/y;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/y;->b:Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lp2/y;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lp2/y;->b:Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->a:Lp2/j;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 13
    .line 14
    iget-object p1, p1, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    check-cast p1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;Lcom/zalexdev/stryker/custom/Sploit;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    .line 47
    .line 48
    new-instance v1, Landroidx/activity/b;

    .line 49
    .line 50
    const/16 v2, 0xc

    .line 51
    .line 52
    invoke-direct {v1, v0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->b:Ll4/l;

    .line 63
    .line 64
    const v1, 0x7f130071

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lo4/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/wifi/Wifi;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic d:Landroid/app/Dialog;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:[I

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/material/button/MaterialButton;Landroid/app/Dialog;Landroid/view/View;Landroid/widget/TextView;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/y;->a:Lcom/zalexdev/stryker/wifi/Wifi;

    iput-object p2, p0, Lo4/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lo4/y;->c:Lcom/google/android/material/button/MaterialButton;

    iput-object p4, p0, Lo4/y;->d:Landroid/app/Dialog;

    iput-object p5, p0, Lo4/y;->e:Landroid/view/View;

    iput-object p6, p0, Lo4/y;->f:Landroid/widget/TextView;

    iput-object p7, p0, Lo4/y;->g:[I

    iput-object p8, p0, Lo4/y;->h:Ljava/lang/String;

    iput-object p9, p0, Lo4/y;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lo4/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iget-object v6, p0, Lo4/y;->g:[I

    .line 4
    .line 5
    iget-object v3, p0, Lo4/y;->h:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lo4/y;->i:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lo4/y;->a:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/zalexdev/stryker/wifi/Wifi;->B:Ll4/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, v1, Lcom/zalexdev/stryker/wifi/Wifi;->C:Lo4/f0;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/util/Timer;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p1, p0, Lo4/y;->c:Lcom/google/android/material/button/MaterialButton;

    .line 40
    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iget-object v2, p0, Lo4/y;->d:Landroid/app/Dialog;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lo4/y;->e:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lo4/y;->f:Landroid/widget/TextView;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {v5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v1, Lcom/zalexdev/stryker/wifi/Wifi;->A:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-lez v2, :cond_2

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v7, "Success: "

    .line 74
    .line 75
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    aget p1, v6, p1

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, "\nSaving capture\u2026"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_1
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const-string p1, "Failed to capture handshake"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_2
    new-instance p1, Ljava/lang/Thread;

    .line 100
    .line 101
    new-instance v7, Lo4/b0;

    .line 102
    .line 103
    move-object v0, v7

    .line 104
    invoke-direct/range {v0 .. v6}, Lo4/b0;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;ILjava/lang/String;Ljava/lang/String;Landroid/widget/TextView;[I)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

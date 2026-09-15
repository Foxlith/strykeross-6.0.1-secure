.class public final synthetic Lw2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/geomac/GeoMac;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ljava/lang/Exception;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lw2/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw2/j;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 7
    .line 8
    iput-object p2, p0, Lw2/j;->c:Ljava/lang/Exception;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lw2/j;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lw2/j;->c:Ljava/lang/Exception;

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    iget-object v4, p0, Lw2/j;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, v4, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, v4, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, v4, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v4, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v3, 0x7f130200

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, v4, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v0, v4, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, v4, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, v4, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const v3, 0x7f130206

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

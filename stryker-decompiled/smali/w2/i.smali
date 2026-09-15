.class public final synthetic Lw2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/geomac/GeoMac;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lw2/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw2/i;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 7
    .line 8
    iput-object p2, p0, Lw2/i;->c:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lw2/i;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lw2/i;->c:Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lw2/i;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const v3, 0x7f130203

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

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
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    :try_start_0
    invoke-static {v1}, Li5/a;->f0(Ljava/io/File;)Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v3, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Lz2/a;->c(Ljava/util/ArrayList;)I

    .line 71
    .line 72
    .line 73
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-object v3, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 92
    .line 93
    new-instance v3, Ly/n;

    .line 94
    .line 95
    const/4 v4, 0x3

    .line 96
    invoke-direct {v3, v1, v4, v2}, Ly/n;-><init>(IILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    iget-object v3, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 105
    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_3

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    iget-object v0, v2, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 122
    .line 123
    new-instance v3, Lw2/j;

    .line 124
    .line 125
    const/4 v4, 0x0

    .line 126
    invoke-direct {v3, v2, v1, v4}, Lw2/j;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ljava/lang/Exception;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    :goto_2
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

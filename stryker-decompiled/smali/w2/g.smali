.class public final synthetic Lw2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/geomac/GeoMac;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/geomac/GeoMac;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lw2/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw2/g;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget p1, p0, Lw2/g;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget p1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    .line 8
    .line 9
    iget-object p1, p0, Lw2/g;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p1, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 16
    .line 17
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Ljava/lang/Thread;

    .line 21
    .line 22
    new-instance v2, Lj2/g;

    .line 23
    .line 24
    invoke-direct {v2, p1, v0, v1}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 25
    .line 26
    .line 27
    const-string p1, "geomac-export"

    .line 28
    .line 29
    invoke-direct {p2, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p2, p1, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Ljava/lang/Thread;

    .line 42
    .line 43
    new-instance v0, Lj2/g;

    .line 44
    .line 45
    invoke-direct {v0, p1, v2, v1}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 46
    .line 47
    .line 48
    const-string p1, "geomac-export"

    .line 49
    .line 50
    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    return-void

    .line 55
    :pswitch_0
    iget-object p1, p0, Lw2/g;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 56
    .line 57
    iget-object p2, p1, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 58
    .line 59
    monitor-enter p2

    .line 60
    :try_start_0
    iget-object v1, p2, Lz2/a;->c:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p2, Lz2/a;->b:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 68
    .line 69
    .line 70
    iput-boolean v0, p2, Lz2/a;->d:Z

    .line 71
    .line 72
    invoke-virtual {p2}, Lz2/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p2

    .line 76
    invoke-virtual {p1}, Lcom/zalexdev/stryker/geomac/GeoMac;->d()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p2

    .line 82
    throw p1

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

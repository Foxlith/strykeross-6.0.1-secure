.class public final synthetic Lw2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/geomac/GeoMac;

.field public final synthetic c:Ly2/b;

.field public final synthetic d:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/geomac/GeoMac;Ly2/b;Landroid/app/Dialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lw2/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw2/e;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 7
    .line 8
    iput-object p2, p0, Lw2/e;->c:Ly2/b;

    .line 9
    .line 10
    iput-object p3, p0, Lw2/e;->d:Landroid/app/Dialog;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lw2/e;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lw2/e;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 7
    .line 8
    iget-object v0, p0, Lw2/e;->c:Ly2/b;

    .line 9
    .line 10
    iget-object v1, p0, Lw2/e;->d:Landroid/app/Dialog;

    .line 11
    .line 12
    iget-object v2, p1, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 13
    .line 14
    iget-object v0, v0, Ly2/b;->a:Ljava/lang/String;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    invoke-virtual {v2}, Lz2/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    :goto_0
    monitor-exit v2

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_1
    iget-object v3, v2, Lz2/a;->b:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Integer;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v3, v2, Lz2/a;->c:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v0, v2, Lz2/a;->b:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_1
    iget-object v4, v2, Lz2/a;->c:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ge v3, v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ly2/b;

    .line 67
    .line 68
    iget-object v4, v4, Ly2/b;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v2}, Lz2/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    monitor-exit v2

    .line 84
    :goto_2
    invoke-virtual {p1}, Lcom/zalexdev/stryker/geomac/GeoMac;->d()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v2

    .line 93
    throw p1

    .line 94
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    .line 95
    .line 96
    iget-object p1, p0, Lw2/e;->b:Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lw2/e;->c:Ly2/b;

    .line 107
    .line 108
    iget-wide v2, v1, Ly2/b;->c:D

    .line 109
    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, ","

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-wide v1, v1, Ly2/b;->d:D

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/geomac/GeoMac;->f(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lw2/e;->d:Landroid/app/Dialog;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

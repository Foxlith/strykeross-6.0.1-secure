.class public final synthetic Ld4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/nuclei/NucleiMain;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/nuclei/NucleiMain;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld4/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld4/i;->b:Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ld4/i;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/i;->b:Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/zalexdev/stryker/nuclei/NucleiMain;->p:I

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->g()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, v1, Lcom/zalexdev/stryker/nuclei/NucleiMain;->a:Ll4/l;

    .line 15
    .line 16
    invoke-virtual {v0}, Ll4/l;->I()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    if-ge v2, v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/zalexdev/stryker/custom/Site;

    .line 34
    .line 35
    iget-object v6, v4, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 36
    .line 37
    const-string v7, "Running"

    .line 38
    .line 39
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_0

    .line 44
    .line 45
    const-string v6, "Scheduled"

    .line 46
    .line 47
    iget-object v7, v4, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget-object v6, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v3, "Failed"

    .line 70
    .line 71
    iput-object v3, v4, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 72
    .line 73
    const-string v3, "100"

    .line 74
    .line 75
    iput-object v3, v4, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, v1, Lcom/zalexdev/stryker/nuclei/NucleiMain;->a:Ll4/l;

    .line 78
    .line 79
    invoke-virtual {v3, v2, v4}, Ll4/l;->b(ILcom/zalexdev/stryker/custom/Site;)V

    .line 80
    .line 81
    .line 82
    move v3, v5

    .line 83
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    if-eqz v3, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v2, Ld4/i;

    .line 99
    .line 100
    invoke-direct {v2, v1, v5}, Ld4/i;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiMain;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

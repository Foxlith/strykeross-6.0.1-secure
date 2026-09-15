.class public final synthetic Lt2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/dashboard/Dashboard;

.field public final synthetic c:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/dashboard/Dashboard;Lcom/google/android/material/card/MaterialCardView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lt2/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt2/b;->b:Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 7
    .line 8
    iput-object p2, p0, Lt2/b;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lt2/b;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "magisk_notif"

    .line 5
    .line 6
    iget-object v2, p0, Lt2/b;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 7
    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    iget-object v4, p0, Lt2/b;->b:Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget p1, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 38
    .line 39
    const-string v2, "/data/data/com.zalexdev.stryker/files/sqlite3 /data/adb/magisk.db \"UPDATE policies SET logging=\'0\',notification=\'0\' WHERE package_name=\'com.zalexdev.stryker\';\""

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "no such"

    .line 46
    .line 47
    invoke-static {v2, v3}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "/data/data/com.zalexdev.stryker/files/sqlite3 /data/adb/magisk.db \"UPDATE policies SET logging=\'0\',notification=\'0\' WHERE uid=\'"

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, "\';\""

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v2}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object p1, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 80
    .line 81
    invoke-virtual {p1}, Ll4/l;->e()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    iget-object p1, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 88
    .line 89
    const v2, 0x7f1303a2

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p1, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iget-object p1, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 101
    .line 102
    const v2, 0x7f1303a1

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_1
    iget-object p1, v4, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 107
    .line 108
    invoke-virtual {p1, v1, v0}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

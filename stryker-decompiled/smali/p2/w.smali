.class public final synthetic Lp2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp2/t;

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Sploit;


# direct methods
.method public synthetic constructor <init>(Lp2/t;Lcom/zalexdev/stryker/custom/Sploit;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lp2/w;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/w;->b:Lp2/t;

    .line 7
    .line 8
    iput-object p2, p0, Lp2/w;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lp2/w;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lp2/w;->c:Lcom/zalexdev/stryker/custom/Sploit;

    .line 4
    .line 5
    iget-object v1, p0, Lp2/w;->b:Lp2/t;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, v1, Lp2/t;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lp2/j;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    check-cast p1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;Lcom/zalexdev/stryker/custom/Sploit;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget-object p1, v1, Lp2/t;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lp2/j;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    check-cast p1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 33
    .line 34
    sget-object v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lp2/j;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Lp2/j;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;

    .line 45
    .line 46
    invoke-direct {v2}, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v3, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getTitle()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v5, "title"

    .line 59
    .line 60
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v4, "id"

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v4, "platform"

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getPlatform()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v4, "type"

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getType()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v4, "author"

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getAuthor()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v4, "date"

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getDate()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v4, "path"

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, v2, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->a:Lp2/j;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v0, "arsenal_sploit_detail"

    .line 127
    .line 128
    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/u0;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lo4/i0;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic s:Landroid/widget/TextView;

.field public final synthetic t:Landroid/view/View;

.field public final synthetic u:Landroid/widget/TextView;

.field public final synthetic v:Lcom/zalexdev/stryker/wifi/Wifi;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/i0;->v:Lcom/zalexdev/stryker/wifi/Wifi;

    iput-object p5, p0, Lo4/i0;->s:Landroid/widget/TextView;

    iput-object p6, p0, Lo4/i0;->t:Landroid/view/View;

    iput-object p7, p0, Lo4/i0;->u:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ll4/c;->d:Ll4/l;

    .line 2
    .line 3
    const-string v0, "Mdk4 stopped"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lo4/i0;->v:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lo4/i0;->t:Landroid/view/View;

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iget-object v0, p0, Lo4/i0;->u:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    const-string p1, "Attack stopped"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo4/i0;->v:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v0, v0, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "Packets sent"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lo4/i0;->s:Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Ll4/c;->d:Ll4/l;

    .line 34
    .line 35
    const-string v2, "hide"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "((\\w{2}:){5}\\w{2})"

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "XX:XX:XX:XX:XX:XX"

    .line 64
    .line 65
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, "\n"

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lcom/zalexdev/stryker/wifi/Wifi;->i(Landroid/widget/TextView;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo4/i0;->v:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lo4/i0;->s:Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v1, "Success"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

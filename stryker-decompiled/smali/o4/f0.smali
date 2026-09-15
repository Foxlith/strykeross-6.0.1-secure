.class public final Lo4/f0;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic s:Landroid/widget/TextView;

.field public final synthetic t:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic u:[I

.field public final synthetic v:Landroid/widget/TextView;

.field public final synthetic w:Lcom/zalexdev/stryker/wifi/Wifi;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Ljava/util/concurrent/atomic/AtomicReference;[ILandroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/f0;->w:Lcom/zalexdev/stryker/wifi/Wifi;

    iput-object p5, p0, Lo4/f0;->s:Landroid/widget/TextView;

    iput-object p6, p0, Lo4/f0;->t:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p7, p0, Lo4/f0;->u:[I

    iput-object p8, p0, Lo4/f0;->v:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo4/f0;->w:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lo4/f0;->s:Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v0, "Attack finished due to error.\n"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    iget-object p1, p0, Lo4/f0;->t:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/Timer;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "WPA handshake"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "((\\w{2}:){5}\\w{2})"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lo4/f0;->w:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/zalexdev/stryker/wifi/Wifi;->A:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-object v1, v0, Lcom/zalexdev/stryker/wifi/Wifi;->A:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lo4/f0;->u:[I

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    aget v2, p1, v1

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    aput v2, p1, v1

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    iget-object v0, v0, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Success: "

    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    aget p1, p1, v1

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v0, p0, Lo4/f0;->v:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void
.end method

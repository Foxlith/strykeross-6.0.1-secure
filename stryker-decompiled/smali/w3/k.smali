.class public final synthetic Lw3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/metasploit/Metasploit;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lw3/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw3/k;->b:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lw3/k;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lw3/k;->b:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->b:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    .line 13
    .line 14
    invoke-static {p1, v1, v0}, Lw3/n;->a(Landroid/content/Context;Landroid/app/Activity;Ll4/l;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/metasploit/Metasploit;->C:I

    .line 19
    .line 20
    iget-object p1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->b:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const v2, 0x7f1303de

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/metasploit/Metasploit;->f(Z)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/Thread;

    .line 38
    .line 39
    new-instance v1, Lw3/j;

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-direct {v1, v0, v2}, Lw3/j;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V

    .line 43
    .line 44
    .line 45
    const-string v0, "msf-restart-console"

    .line 46
    .line 47
    invoke-direct {p1, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

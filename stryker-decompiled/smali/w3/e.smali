.class public final synthetic Lw3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/metasploit/InstallMetasploit;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/metasploit/InstallMetasploit;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lw3/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw3/e;->b:Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lw3/e;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lw3/e;->b:Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->u:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->l()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->u:I

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->u:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->l()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    sget p1, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->u:I

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->l()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

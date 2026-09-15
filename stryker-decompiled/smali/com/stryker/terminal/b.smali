.class public final synthetic Lcom/stryker/terminal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/stryker/terminal/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/stryker/terminal/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/stryker/terminal/b;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 10
    .line 11
    iput-object v1, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    .line 12
    .line 13
    iput-object v1, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->w:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v1, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->x:Landroid/widget/ScrollView;

    .line 16
    .line 17
    iput-object v1, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->y:Landroid/widget/TextView;

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 21
    .line 22
    iput-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->u:Landroid/app/Dialog;

    .line 23
    .line 24
    iput-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->v:Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->w:Landroid/widget/ScrollView;

    .line 27
    .line 28
    iput-object v1, v2, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->x:Landroid/widget/TextView;

    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast v2, Lj5/a;

    .line 32
    .line 33
    invoke-static {v2, p1}, Lcom/stryker/terminal/App;->a(Lj5/a;Landroid/content/DialogInterface;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

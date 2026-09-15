.class public final synthetic Lw3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg3/b;


# direct methods
.method public synthetic constructor <init>(Lg3/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lw3/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw3/d;->b:Lg3/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lw3/d;->a:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    iget-object v2, p0, Lw3/d;->b:Lg3/b;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lg3/b;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->w:Landroid/widget/ScrollView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, v2, Lg3/b;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->k:Landroid/widget/ScrollView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

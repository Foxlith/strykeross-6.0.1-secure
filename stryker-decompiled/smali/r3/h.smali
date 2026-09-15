.class public final synthetic Lr3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr3/t;


# direct methods
.method public synthetic constructor <init>(Lr3/t;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lr3/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr3/h;->b:Lr3/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lr3/h;->a:I

    .line 2
    .line 3
    const v0, 0x7f13035f

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lr3/h;->b:Lr3/t;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, v1, Lr3/t;->d:Ll4/l;

    .line 12
    .line 13
    iget-object v0, v1, Lr3/t;->a:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, v1, Lr3/t;->b:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lw3/n;->a(Landroid/content/Context;Landroid/app/Activity;Ll4/l;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object p1, v1, Lr3/t;->a:Landroid/content/Context;

    .line 22
    .line 23
    check-cast p1, Lf/q;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, p1}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const v3, 0x7f0a0205

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v2, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->h(Z)I

    .line 47
    .line 48
    .line 49
    iget-object p1, v1, Lr3/t;->e:Landroid/app/Dialog;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    iget-object p1, v1, Lr3/t;->a:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, v1, Lr3/t;->d:Ll4/l;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    iget-object p1, v1, Lr3/t;->a:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v0, v1, Lr3/t;->d:Ll4/l;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

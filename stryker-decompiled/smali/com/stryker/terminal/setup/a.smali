.class public final synthetic Lcom/stryker/terminal/setup/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/stryker/terminal/setup/a;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/stryker/terminal/setup/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p2, Lo4/u;->m:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    sget-object p2, Lo4/u;->m:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    sget-object p2, Lo4/u;->m:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    sget-object p2, Lo4/u;->m:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_4
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 34
    .line 35
    :pswitch_5
    return-void

    .line 36
    :pswitch_6
    sget-object p1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_9
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_a
    sget p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->e:I

    .line 52
    .line 53
    :pswitch_b
    return-void

    .line 54
    :pswitch_c
    invoke-static {p1, p2}, Lcom/stryker/terminal/ui/other/SetupActivity;->g(Landroid/content/DialogInterface;I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_d
    invoke-static {p1, p2}, Lcom/stryker/terminal/setup/SetupHelper;->a(Landroid/content/DialogInterface;I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

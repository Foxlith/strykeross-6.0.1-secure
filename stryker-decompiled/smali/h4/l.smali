.class public final synthetic Lh4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh4/l;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh4/l;->b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget p1, p0, Lh4/l;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lh4/l;->b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 9
    .line 10
    xor-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    const-string v0, "rootless_no_fastboot"

    .line 13
    .line 14
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 19
    .line 20
    xor-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    const-string v0, "rootless_no_iothread"

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 29
    .line 30
    const-string v0, "rootless_no_share"

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 37
    .line 38
    const-string v0, "rootless_no_rng"

    .line 39
    .line 40
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_3
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 45
    .line 46
    const-string v0, "rootless_mttcg"

    .line 47
    .line 48
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

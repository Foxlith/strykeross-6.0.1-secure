.class public final synthetic Lh4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lh4/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh4/m;->b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 7
    .line 8
    iput-object p2, p0, Lh4/m;->c:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 5

    .line 1
    iget v0, p0, Lh4/m;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lh4/m;->c:[Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p0, Lh4/m;->b:Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v3, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 12
    .line 13
    const-string v4, "rootless_pauth"

    .line 14
    .line 15
    aget-object p1, v2, p1

    .line 16
    .line 17
    invoke-virtual {v0, v4, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v3, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 21
    .line 22
    const-string v0, "rootless_cpu_legacy"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v3, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 28
    .line 29
    const-string v0, "rootless_cpu_verified"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ll4/l;->g0(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v0, v3, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 39
    .line 40
    const-string v1, "rootless_cache_mode"

    .line 41
    .line 42
    aget-object p1, v2, p1

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    if-nez p1, :cond_0

    .line 52
    .line 53
    iget-object p1, v3, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 54
    .line 55
    aget-object v0, v2, v1

    .line 56
    .line 57
    const-string v1, "rootless_aio"

    .line 58
    .line 59
    invoke-virtual {p1, v1, v0}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 67
    .line 68
    const p1, 0x7f13069e

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v3, p1}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->g(Ljava/lang/String;)Lf/n;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Ljava/lang/Thread;

    .line 80
    .line 81
    new-instance v1, Ld4/d;

    .line 82
    .line 83
    const/4 v2, 0x4

    .line 84
    invoke-direct {v1, v3, p1, v2}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    const-string p1, "vm-aio-probe"

    .line 88
    .line 89
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

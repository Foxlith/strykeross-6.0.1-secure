.class public final synthetic Lp2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/c;
.implements Lf4/h;
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;
.implements Lh4/n;
.implements Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lp2/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/i;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lp2/i;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 5

    .line 1
    iget v0, p0, Lp2/i;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lp2/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lp2/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lv/z;

    .line 11
    .line 12
    check-cast v1, Landroid/app/NotificationManager;

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    cmp-long v0, p3, v3

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    const-wide/16 v3, 0x64

    .line 21
    .line 22
    mul-long/2addr p1, v3

    .line 23
    div-long/2addr p1, p3

    .line 24
    long-to-int p1, p1

    .line 25
    const/4 p2, 0x0

    .line 26
    const/16 p3, 0x64

    .line 27
    .line 28
    invoke-virtual {v2, p3, p1, p2}, Lv/z;->f(IIZ)V

    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v2}, Lv/z;->a()Landroid/app/Notification;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/16 p2, 0x1f3e

    .line 38
    .line 39
    invoke-virtual {v1, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :cond_0
    return-void

    .line 43
    :pswitch_0
    check-cast v2, Lo2/o;

    .line 44
    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v1, p1, p2}, Lo2/o;->a(Ljava/lang/String;J)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final applyAsInt(II)Linet/ipaddr/AddressSegment;
    .locals 3

    .line 1
    iget v0, p0, Lp2/i;->a:I

    iget-object v1, p0, Lp2/i;->b:Ljava/lang/Object;

    iget-object v2, p0, Lp2/i;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v2, v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;->h(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;II)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v2, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v2, v1, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;->h(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;II)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp2/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 4
    .line 5
    iget-object v1, p0, Lp2/i;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 10
    .line 11
    const v3, 0x7f13005f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/lang/Thread;

    .line 22
    .line 23
    new-instance v3, Lp2/g;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v3, v0, v1, v4}, Lp2/g;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp2/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lp2/i;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const-string v1, "rootless_ram"

    .line 22
    .line 23
    invoke-virtual {v2, p1, v1}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 4

    .line 1
    iget p1, p0, Lp2/i;->a:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lp2/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v3, p0, Lp2/i;->c:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v3, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 14
    .line 15
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const p2, 0x7f0a04ac

    .line 35
    .line 36
    .line 37
    if-ne p1, p2, :cond_1

    .line 38
    .line 39
    const-string p1, "apk"

    .line 40
    .line 41
    :goto_0
    move p2, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const p2, 0x7f0a04af

    .line 44
    .line 45
    .line 46
    if-ne p1, p2, :cond_2

    .line 47
    .line 48
    const-string p1, "linux"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const p2, 0x7f0a04b0

    .line 52
    .line 53
    .line 54
    if-ne p1, p2, :cond_3

    .line 55
    .line 56
    const-string p1, "php"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const p2, 0x7f0a04b1

    .line 60
    .line 61
    .line 62
    if-ne p1, p2, :cond_4

    .line 63
    .line 64
    const-string p1, "python"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const p2, 0x7f0a04ad

    .line 68
    .line 69
    .line 70
    if-ne p1, p2, :cond_5

    .line 71
    .line 72
    const-string p1, ""

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    const-string p1, "windows"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_1
    invoke-virtual {v3, p1, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 80
    .line 81
    .line 82
    if-eqz p2, :cond_6

    .line 83
    .line 84
    move v0, v1

    .line 85
    :cond_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :goto_2
    return-void

    .line 89
    :pswitch_0
    check-cast v3, Landroid/widget/LinearLayout;

    .line 90
    .line 91
    check-cast v2, Landroid/widget/LinearLayout;

    .line 92
    .line 93
    sget-object p1, Ln3/h;->a:[Ljava/lang/String;

    .line 94
    .line 95
    const p1, 0x7f0a0299

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    move p2, v1

    .line 109
    goto :goto_3

    .line 110
    :cond_7
    move p2, v0

    .line 111
    :goto_3
    invoke-virtual {v3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    if-eqz p1, :cond_8

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_8
    move v0, v1

    .line 118
    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

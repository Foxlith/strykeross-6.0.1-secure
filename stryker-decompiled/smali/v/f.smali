.class public final synthetic Lv/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/w;
.implements Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;
.implements Lcom/stryker/terminal/frontend/session/terminal/OnTextSize;
.implements Landroidx/core/view/a0;
.implements Lg1/j;
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;
.implements Landroidx/activity/result/b;
.implements Lh4/n;
.implements Linet/ipaddr/IPAddressSection$TriFunction;
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;
.implements Linet/ipaddr/IPAddressSection$SeriesCreator;
.implements Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;
.implements Lokhttp3/EventListener$Factory;
.implements Lorg/jsoup/select/NodeFilter;


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
    iput p2, p0, Lv/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv/f;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 4
    .line 5
    check-cast p1, Landroidx/activity/result/a;

    .line 6
    .line 7
    sget v1, Lcom/zalexdev/stryker/hid/ui/HidFragment;->l:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, -0x1

    .line 16
    iget v2, p1, Landroidx/activity/result/a;->a:I

    .line 17
    .line 18
    if-ne v2, v1, :cond_1

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/activity/result/a;->b:Landroid/content/Intent;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string v1, "stryker.hid.ide.request_arsenal"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    instance-of p1, p1, Lcom/zalexdev/stryker/MainActivity;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const p1, 0x7f0a067c

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroidx/fragment/app/x0;->e(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->g()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final apply(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 2

    .line 1
    iget v0, p0, Lv/f;->a:I

    iget-object v1, p0, Lv/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    invoke-virtual {v1, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSequentialBlockSection(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v1, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    invoke-virtual {v1, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSequentialBlockSection(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Linet/ipaddr/IPAddressSection$SeriesCreator;

    check-cast p1, Linet/ipaddr/IPAddress;

    check-cast p2, Linet/ipaddr/IPAddress;

    check-cast p3, Linet/ipaddr/IPAddress;

    invoke-static {v0, p1, p2, p3}, Linet/ipaddr/IPAddress;->a(Linet/ipaddr/IPAddressSection$SeriesCreator;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsInt(II)Linet/ipaddr/AddressSegment;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    invoke-static {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSegment;->a(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lv/f;->a:I

    iget-object v1, p0, Lv/f;->b:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast v1, Lcom/zalexdev/stryker/wifi/Wifi;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wifi/Wifi;->g()V

    return-void

    :sswitch_0
    check-cast v1, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    sget v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    invoke-virtual {v1}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j()V

    return-void

    :sswitch_1
    check-cast v1, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;

    sget-object v0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->e()V

    return-void

    :sswitch_2
    check-cast v1, Lcom/zalexdev/stryker/coremanger/CoreManager;

    sget v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    invoke-virtual {v1}, Lcom/zalexdev/stryker/coremanger/CoreManager;->e()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    const-string v2, "rootless_cpus"

    .line 10
    .line 11
    invoke-virtual {v1, p1, v2}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Lokhttp3/EventListener;

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->a(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public final createDivision(JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)Linet/ipaddr/format/AddressDivisionBase;
    .locals 11

    .line 1
    move-object v0, p0

    iget-object v1, v0, Lv/f;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->e(Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v1

    return-object v1
.end method

.method public final d(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lf/q0;ILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-lt v1, v2, :cond_1

    .line 12
    .line 13
    and-int/2addr p2, v4

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object p2, p1, Lf/q0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lj0/g;

    .line 19
    .line 20
    invoke-interface {p2}, Lj0/g;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    iget-object p2, p1, Lf/q0;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p2, Lj0/g;

    .line 26
    .line 27
    invoke-interface {p2}, Lj0/g;->b()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Lj0/a;->a(Ljava/lang/Object;)Landroid/view/inputmethod/InputContentInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-nez p3, :cond_0

    .line 36
    .line 37
    new-instance p3, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    move-object p3, v2

    .line 49
    :goto_0
    const-string v2, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 50
    .line 51
    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    const-string p2, "InputConnectionCompat"

    .line 57
    .line 58
    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 59
    .line 60
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 65
    .line 66
    iget-object v2, p1, Lf/q0;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Lj0/g;

    .line 69
    .line 70
    invoke-interface {v2}, Lj0/g;->a()Landroid/content/ClipDescription;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v5, Landroid/content/ClipData$Item;

    .line 75
    .line 76
    iget-object v6, p1, Lf/q0;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, Lj0/g;

    .line 79
    .line 80
    invoke-interface {v6}, Lj0/g;->c()Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, v2, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 88
    .line 89
    .line 90
    const/16 v2, 0x1f

    .line 91
    .line 92
    const/4 v5, 0x2

    .line 93
    if-lt v1, v2, :cond_2

    .line 94
    .line 95
    new-instance v1, Landroidx/core/view/e;

    .line 96
    .line 97
    invoke-direct {v1, p2, v5}, Landroidx/core/view/e;-><init>(Landroid/content/ClipData;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    new-instance v1, Landroidx/core/view/g;

    .line 102
    .line 103
    invoke-direct {v1, p2, v5}, Landroidx/core/view/g;-><init>(Landroid/content/ClipData;I)V

    .line 104
    .line 105
    .line 106
    :goto_2
    iget-object p1, p1, Lf/q0;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Lj0/g;

    .line 109
    .line 110
    invoke-interface {p1}, Lj0/g;->e()Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {v1, p1}, Landroidx/core/view/f;->c(Landroid/net/Uri;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, p3}, Landroidx/core/view/f;->a(Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1}, Landroidx/core/view/f;->build()Landroidx/core/view/i;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v0, p1}, Landroidx/core/view/c1;->k(Landroid/view/View;Landroidx/core/view/i;)Landroidx/core/view/i;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    move v3, v4

    .line 131
    :cond_3
    :goto_3
    return v3
.end method

.method public final head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, p1, p2}, Lorg/jsoup/nodes/Element;->f(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object p1

    return-object p1
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-static {v0, p1, p2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->k(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;

    move-result-object p1

    return-object p1
.end method

.method public final onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 7

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, 0x4

    .line 4
    iget v2, p0, Lv/f;->a:I

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v6, p0, Lv/f;->b:Ljava/lang/Object;

    .line 10
    .line 11
    sparse-switch v2, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;

    .line 15
    .line 16
    sget v2, Lcom/zalexdev/stryker/nuclei/NucleiReport;->w:I

    .line 17
    .line 18
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    :cond_0
    iput v3, v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;->u:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const v2, 0x7f0a0502

    .line 42
    .line 43
    .line 44
    if-ne p2, v2, :cond_2

    .line 45
    .line 46
    iput v1, v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;->u:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const v1, 0x7f0a0503

    .line 50
    .line 51
    .line 52
    if-ne p2, v1, :cond_3

    .line 53
    .line 54
    iput v0, v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;->u:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const v0, 0x7f0a0506

    .line 58
    .line 59
    .line 60
    if-ne p2, v0, :cond_4

    .line 61
    .line 62
    iput p1, v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;->u:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const p1, 0x7f0a0505

    .line 66
    .line 67
    .line 68
    if-ne p2, p1, :cond_5

    .line 69
    .line 70
    iput v4, v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;->u:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    const p1, 0x7f0a0504

    .line 74
    .line 75
    .line 76
    if-ne p2, p1, :cond_0

    .line 77
    .line 78
    iput v5, v6, Lcom/zalexdev/stryker/nuclei/NucleiReport;->u:I

    .line 79
    .line 80
    :goto_0
    invoke-virtual {v6}, Lcom/zalexdev/stryker/nuclei/NucleiReport;->e()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :sswitch_0
    check-cast v6, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 85
    .line 86
    sget v2, Lcom/zalexdev/stryker/nuclei/NucleiMain;->p:I

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    const v2, 0x7f0a0474

    .line 109
    .line 110
    .line 111
    if-ne p2, v2, :cond_7

    .line 112
    .line 113
    iput p1, v6, Lcom/zalexdev/stryker/nuclei/NucleiMain;->m:I

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_7
    const p1, 0x7f0a0472

    .line 117
    .line 118
    .line 119
    if-ne p2, p1, :cond_8

    .line 120
    .line 121
    iput v0, v6, Lcom/zalexdev/stryker/nuclei/NucleiMain;->m:I

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_8
    const p1, 0x7f0a0473

    .line 125
    .line 126
    .line 127
    if-ne p2, p1, :cond_9

    .line 128
    .line 129
    iput v1, v6, Lcom/zalexdev/stryker/nuclei/NucleiMain;->m:I

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_9
    iput v4, v6, Lcom/zalexdev/stryker/nuclei/NucleiMain;->m:I

    .line 133
    .line 134
    :goto_1
    invoke-virtual {v6}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->d()V

    .line 135
    .line 136
    .line 137
    :goto_2
    return-void

    .line 138
    :sswitch_1
    check-cast v6, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 139
    .line 140
    sget p1, Lcom/zalexdev/stryker/nmap/NmapScanner;->W:I

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    :cond_a
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Ljava/lang/Integer;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    const p2, 0x7f0a0454

    .line 164
    .line 165
    .line 166
    const-string v0, "custom"

    .line 167
    .line 168
    if-ne p1, p2, :cond_b

    .line 169
    .line 170
    const-string p1, "fast"

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_b
    const p2, 0x7f0a0455

    .line 174
    .line 175
    .line 176
    if-ne p1, p2, :cond_c

    .line 177
    .line 178
    const-string p1, "full"

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_c
    const p2, 0x7f0a0457

    .line 182
    .line 183
    .line 184
    if-ne p1, p2, :cond_d

    .line 185
    .line 186
    const-string p1, "intense"

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_d
    const p2, 0x7f0a0452

    .line 190
    .line 191
    .line 192
    if-ne p1, p2, :cond_e

    .line 193
    .line 194
    move-object p1, v0

    .line 195
    goto :goto_3

    .line 196
    :cond_e
    const-string p1, "default"

    .line 197
    .line 198
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_f

    .line 203
    .line 204
    iget-object p2, v6, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    .line 205
    .line 206
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    const v0, 0x7f0d00cc

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    const v0, 0x7f0a0442

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 225
    .line 226
    iget-object v1, v6, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    .line 227
    .line 228
    const-string v2, "nmap_custom_flags"

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 238
    .line 239
    iget-object v2, v6, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    .line 240
    .line 241
    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 242
    .line 243
    .line 244
    const v2, 0x7f130492

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const v2, 0x7f130490

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    new-instance v1, Lcom/stryker/terminal/ui/customize/a;

    .line 263
    .line 264
    const/16 v2, 0xe

    .line 265
    .line 266
    invoke-direct {v1, v6, v0, v2}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    const v0, 0x7f130347

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    const v0, 0x7f1300f4

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p2}, Lf/m;->show()Lf/n;

    .line 284
    .line 285
    .line 286
    :cond_f
    iput-object p1, v6, Lcom/zalexdev/stryker/nmap/NmapScanner;->S:Ljava/lang/String;

    .line 287
    .line 288
    iget-object p2, v6, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    .line 289
    .line 290
    const-string v0, "nmap_active_profile"

    .line 291
    .line 292
    invoke-virtual {p2, v0, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, p1}, Lcom/zalexdev/stryker/nmap/NmapScanner;->d(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :goto_4
    return-void

    .line 299
    :sswitch_2
    check-cast v6, Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 300
    .line 301
    sget p1, Lcom/zalexdev/stryker/geomac/GeoMac;->r:I

    .line 302
    .line 303
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_10

    .line 311
    .line 312
    goto :goto_a

    .line 313
    :cond_10
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    check-cast p1, Ljava/lang/Integer;

    .line 318
    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    const p2, 0x7f0a021a

    .line 324
    .line 325
    .line 326
    const v0, 0x7f0a0219

    .line 327
    .line 328
    .line 329
    if-ne p1, p2, :cond_11

    .line 330
    .line 331
    sget-object p2, Ly2/a;->a:Ly2/a;

    .line 332
    .line 333
    :goto_5
    iput-object p2, v6, Lcom/zalexdev/stryker/geomac/GeoMac;->n:Ly2/a;

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_11
    const p2, 0x7f0a021c

    .line 337
    .line 338
    .line 339
    if-ne p1, p2, :cond_12

    .line 340
    .line 341
    sget-object p2, Ly2/a;->b:Ly2/a;

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_12
    if-ne p1, v0, :cond_14

    .line 345
    .line 346
    :cond_13
    iput-object v3, v6, Lcom/zalexdev/stryker/geomac/GeoMac;->n:Ly2/a;

    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_14
    const p2, 0x7f0a021b

    .line 350
    .line 351
    .line 352
    if-ne p1, p2, :cond_13

    .line 353
    .line 354
    sget-object p2, Ly2/a;->e:Ly2/a;

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :goto_6
    if-ne p1, v0, :cond_15

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_15
    move v4, v5

    .line 361
    :goto_7
    iput-boolean v4, v6, Lcom/zalexdev/stryker/geomac/GeoMac;->q:Z

    .line 362
    .line 363
    iget-object p1, v6, Lcom/zalexdev/stryker/geomac/GeoMac;->b:Ll4/l;

    .line 364
    .line 365
    if-nez p1, :cond_16

    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_16
    iget-object p2, v6, Lcom/zalexdev/stryker/geomac/GeoMac;->n:Ly2/a;

    .line 369
    .line 370
    if-nez p2, :cond_17

    .line 371
    .line 372
    const-string p2, ""

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_17
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    :goto_8
    const-string v0, "geomac_filter"

    .line 380
    .line 381
    invoke-virtual {p1, v0, p2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, v6, Lcom/zalexdev/stryker/geomac/GeoMac;->b:Ll4/l;

    .line 385
    .line 386
    const-string p2, "geomac_cracked_filter"

    .line 387
    .line 388
    iget-boolean v0, v6, Lcom/zalexdev/stryker/geomac/GeoMac;->q:Z

    .line 389
    .line 390
    invoke-virtual {p1, p2, v0}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 391
    .line 392
    .line 393
    :goto_9
    invoke-virtual {v6}, Lcom/zalexdev/stryker/geomac/GeoMac;->d()V

    .line 394
    .line 395
    .line 396
    :goto_a
    return-void

    .line 397
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/stryker/terminal/ui/customize/CustomizeActivity;

    invoke-static {v0, p1}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->g(Lcom/stryker/terminal/ui/customize/CustomizeActivity;I)V

    return-void
.end method

.method public final perform(Landroid/view/View;Lh0/o;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    invoke-static {p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->c(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final run(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/carousel/MaskableFrameLayout;

    invoke-static {v0, p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->a(Lcom/google/android/material/carousel/MaskableFrameLayout;Landroid/graphics/Canvas;)V

    return-void
.end method

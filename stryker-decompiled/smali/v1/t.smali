.class public final Lv1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/k;
.implements Lj0/g;


# static fields
.field public static e:Lv1/t;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lv1/t;->a:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv1/t;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lv1/t;->a:I

    new-instance v0, Lf/v0;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    iput-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv1/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/t;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lv1/t;->a:I

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/x0;Landroidx/fragment/app/x0;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lv1/t;->a:I

    .line 7
    sget-object v0, Lu0/a;->b:Lu0/a;

    invoke-direct {p0, p1, p2, v0}, Lv1/t;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0;Lu0/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/x0;Landroidx/fragment/app/x0;I)V
    .locals 0

    const/4 p3, 0x7

    iput p3, p0, Lv1/t;->a:I

    const-string p3, "store"

    .line 8
    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "factory"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lv1/t;-><init>(Landroidx/lifecycle/x0;Landroidx/fragment/app/x0;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0;Lu0/b;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lv1/t;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv1/t;->c:Ljava/lang/Object;

    iput-object p3, p0, Lv1/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y0;Lu0/c;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Lv1/t;->a:I

    const-string v0, "owner"

    .line 10
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v0

    const-string v1, "owner.viewModelStore"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v1, p1, Landroidx/lifecycle/i;

    if-eqz v1, :cond_0

    check-cast p1, Landroidx/lifecycle/i;

    invoke-interface {p1}, Landroidx/lifecycle/i;->getDefaultViewModelCreationExtras()Lu0/b;

    move-result-object p1

    const-string v1, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }"

    invoke-static {p1, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lu0/a;->b:Lu0/a;

    .line 12
    :goto_0
    invoke-direct {p0, v0, p2, p1}, Lv1/t;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0;Lu0/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/adapter/e;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lv1/t;->a:I

    iput-object p1, p0, Lv1/t;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1/t;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv1/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;Landroid/widget/TextView;Lf/n;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Lv1/t;->a:I

    iput-object p1, p0, Lv1/t;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1/t;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv1/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lv1/t;->a:I

    iput-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv1/t;->c:Ljava/lang/Object;

    iput-object p3, p0, Lv1/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/h;Lo/h;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lv1/t;->a:I

    iput-object p1, p0, Lv1/t;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq/e;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lv1/t;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    new-instance v0, Lr/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    iput-object p1, p0, Lv1/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly0/w;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv1/t;->a:I

    iput-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    new-instance v0, Lv1/b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lv1/b;-><init>(Ljava/lang/Object;Ly0/w;I)V

    iput-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    new-instance v0, Ln/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Ln/a;-><init>(Ljava/lang/Object;Ly0/w;I)V

    iput-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public static g(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ClipDescription;
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipDescription;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public final f(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "stryker:lan-scan"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    iput-object v3, p0, Lv1/t;->b:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    iget-object v3, p0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lv1/t;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    iget-object v2, p0, Lv1/t;->c:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lv1/t;->d:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p1, p0, Lv1/t;->d:Ljava/lang/Object;

    check-cast p1, Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public final h(JJLjava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide v1, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v1, p1, v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "_id < ?"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lv1/t;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    const-wide/16 p1, 0x0

    .line 28
    .line 29
    cmp-long p1, p3, p1

    .line 30
    .line 31
    if-lez p1, :cond_1

    .line 32
    .line 33
    const-string p1, "_id > ?"

    .line 34
    .line 35
    invoke-static {v0, p1}, Lv1/t;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Ljava/util/Set;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p2, "level IN ("

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p2, Ljava/util/Set;

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const/4 p3, 0x1

    .line 71
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    if-eqz p4, :cond_3

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    check-cast p4, Ljava/lang/Integer;

    .line 82
    .line 83
    if-nez p3, :cond_2

    .line 84
    .line 85
    const/16 p3, 0x2c

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_2
    const/16 p3, 0x3f

    .line 91
    .line 92
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    const/4 p3, 0x0

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const/16 p2, 0x29

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v0, p1}, Lv1/t;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Ljava/lang/String;

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_5

    .line 131
    .line 132
    const-string p1, "tool = ?"

    .line 133
    .line 134
    invoke-static {v0, p1}, Lv1/t;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_5
    iget-object p1, p0, Lv1/t;->d:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_6

    .line 159
    .line 160
    const-string p1, "msg LIKE ? ESCAPE \'\\\'"

    .line 161
    .line 162
    invoke-static {v0, p1}, Lv1/t;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string p2, "%"

    .line 168
    .line 169
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p3, p0, Lv1/t;->d:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p3, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    const-string p4, "\\"

    .line 181
    .line 182
    const-string v1, "\\\\"

    .line 183
    .line 184
    invoke-virtual {p3, p4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    const-string p4, "\\%"

    .line 189
    .line 190
    invoke-virtual {p3, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    const-string p3, "_"

    .line 195
    .line 196
    const-string p4, "\\_"

    .line 197
    .line 198
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const/16 p2, 0x25

    .line 206
    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_7

    .line 222
    .line 223
    const-string p1, "1=1"

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    :goto_1
    return-object p1
.end method

.method public final i()Lv1/t;
    .locals 3

    .line 1
    new-instance v0, Lv1/t;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lv1/t;-><init>(I)V

    iget-object v1, v0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lv1/t;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lv1/t;->c:Ljava/lang/Object;

    iget-object v1, p0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lv1/t;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final j(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;
    .locals 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/lifecycle/x0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/lifecycle/x0;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/lifecycle/s0;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/lifecycle/v0;

    .line 27
    .line 28
    instance-of p2, p1, Landroidx/lifecycle/w0;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    check-cast p1, Landroidx/lifecycle/w0;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const-string p2, "viewModel"

    .line 39
    .line 40
    invoke-static {v0, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast p1, Landroidx/lifecycle/p0;

    .line 44
    .line 45
    iget-object p2, p1, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/o;

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/lifecycle/p0;->e:Lb1/d;

    .line 50
    .line 51
    invoke-static {v0, p1, p2}, Landroidx/lifecycle/k;->b(Landroidx/lifecycle/s0;Lb1/d;Landroidx/lifecycle/o;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 58
    .line 59
    const-string p2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    new-instance v0, Lu0/d;

    .line 66
    .line 67
    iget-object v1, p0, Lv1/t;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lu0/b;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Lu0/d;-><init>(Lu0/b;)V

    .line 72
    .line 73
    .line 74
    sget-object v1, Landroidx/lifecycle/t0;->b:Landroidx/lifecycle/t0;

    .line 75
    .line 76
    iget-object v2, v0, Lu0/b;->a:Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :try_start_0
    iget-object v1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Landroidx/lifecycle/v0;

    .line 84
    .line 85
    invoke-interface {v1, p1, v0}, Landroidx/lifecycle/v0;->c(Ljava/lang/Class;Lu0/d;)Landroidx/lifecycle/s0;

    .line 86
    .line 87
    .line 88
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Landroidx/lifecycle/v0;

    .line 93
    .line 94
    invoke-interface {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_1
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Landroidx/lifecycle/x0;

    .line 101
    .line 102
    iget-object v0, v0, Landroidx/lifecycle/x0;->a:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Landroidx/lifecycle/s0;

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    invoke-virtual {p2}, Landroidx/lifecycle/s0;->b()V

    .line 113
    .line 114
    .line 115
    :cond_4
    return-object p1
.end method

.method public final k(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ly0/y;->h(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/y;->d(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    check-cast p1, Ly0/w;

    invoke-virtual {p1}, Ly0/w;->b()V

    iget-object p1, p0, Lv1/t;->b:Ljava/lang/Object;

    check-cast p1, Ly0/w;

    invoke-static {p1, v0}, Landroidx/lifecycle/k;->j(Ly0/w;Ly0/y;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ly0/y;->u()V

    return-object v1

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ly0/y;->u()V

    throw v1
.end method

.method public final m(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    .line 1
    const-string v0, "tags"

    .line 2
    .line 3
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Lv1/s;

    .line 23
    .line 24
    invoke-direct {v1, v0, p1}, Lv1/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ly0/w;

    .line 30
    .line 31
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ly0/w;

    .line 37
    .line 38
    invoke-virtual {v0}, Ly0/w;->c()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ly0/d;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ly0/d;->u(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ly0/w;

    .line 51
    .line 52
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ly0/w;

    .line 58
    .line 59
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    iget-object p2, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p2, Ly0/w;

    .line 67
    .line 68
    invoke-virtual {p2}, Ly0/w;->k()V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_0
    return-void
.end method

.method public final n(ILq/d;Landroidx/constraintlayout/widget/e;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr/b;

    .line 4
    .line 5
    iget-object v1, p2, Lq/d;->p0:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aget v3, v1, v2

    .line 9
    .line 10
    iput v3, v0, Lr/b;->a:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aget v1, v1, v3

    .line 14
    .line 15
    iput v1, v0, Lr/b;->b:I

    .line 16
    .line 17
    invoke-virtual {p2}, Lq/d;->r()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lr/b;->c:I

    .line 22
    .line 23
    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lr/b;

    .line 26
    .line 27
    invoke-virtual {p2}, Lq/d;->l()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lr/b;->d:I

    .line 32
    .line 33
    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lr/b;

    .line 36
    .line 37
    iput-boolean v2, v0, Lr/b;->i:Z

    .line 38
    .line 39
    iput p1, v0, Lr/b;->j:I

    .line 40
    .line 41
    iget p1, v0, Lr/b;->a:I

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    if-ne p1, v1, :cond_0

    .line 45
    .line 46
    move p1, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move p1, v2

    .line 49
    :goto_0
    iget v4, v0, Lr/b;->b:I

    .line 50
    .line 51
    if-ne v4, v1, :cond_1

    .line 52
    .line 53
    move v1, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v1, v2

    .line 56
    :goto_1
    const/4 v4, 0x0

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget p1, p2, Lq/d;->W:F

    .line 60
    .line 61
    cmpl-float p1, p1, v4

    .line 62
    .line 63
    if-lez p1, :cond_2

    .line 64
    .line 65
    move p1, v3

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move p1, v2

    .line 68
    :goto_2
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget v1, p2, Lq/d;->W:F

    .line 71
    .line 72
    cmpl-float v1, v1, v4

    .line 73
    .line 74
    if-lez v1, :cond_3

    .line 75
    .line 76
    move v1, v3

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move v1, v2

    .line 79
    :goto_3
    iget-object v4, p2, Lq/d;->t:[I

    .line 80
    .line 81
    const/4 v5, 0x4

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    aget p1, v4, v2

    .line 85
    .line 86
    if-ne p1, v5, :cond_4

    .line 87
    .line 88
    iput v3, v0, Lr/b;->a:I

    .line 89
    .line 90
    :cond_4
    if-eqz v1, :cond_5

    .line 91
    .line 92
    aget p1, v4, v3

    .line 93
    .line 94
    if-ne p1, v5, :cond_5

    .line 95
    .line 96
    iput v3, v0, Lr/b;->b:I

    .line 97
    .line 98
    :cond_5
    invoke-virtual {p3, p2, v0}, Landroidx/constraintlayout/widget/e;->b(Lq/d;Lr/b;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lr/b;

    .line 104
    .line 105
    iget p1, p1, Lr/b;->e:I

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Lq/d;->P(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Lr/b;

    .line 113
    .line 114
    iget p1, p1, Lr/b;->f:I

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Lq/d;->M(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p1, Lr/b;

    .line 122
    .line 123
    iget-boolean p3, p1, Lr/b;->h:Z

    .line 124
    .line 125
    iput-boolean p3, p2, Lq/d;->E:Z

    .line 126
    .line 127
    iget p1, p1, Lr/b;->g:I

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Lq/d;->J(I)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Lr/b;

    .line 135
    .line 136
    iput v2, p1, Lr/b;->j:I

    .line 137
    .line 138
    iget-boolean p1, p1, Lr/b;->i:Z

    .line 139
    .line 140
    return p1
.end method

.method public final o(Lu2/o;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lf/n;

    .line 8
    .line 9
    new-instance v2, Lv3/g;

    .line 10
    .line 11
    const/16 v3, 0xe

    .line 12
    .line 13
    invoke-direct {v2, p0, v1, p1, v3}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->j(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lv1/t;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lf/n;

    .line 8
    .line 9
    new-instance v2, Lv3/g;

    .line 10
    .line 11
    const/16 v3, 0xf

    .line 12
    .line 13
    invoke-direct {v2, p0, v1, p1, v3}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->j(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/widget/TextView;

    .line 8
    .line 9
    new-instance v2, Lr3/d;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-direct {v2, v1, p1, v3}, Lr3/d;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->j(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final r(Landroidx/lifecycle/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/r0;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/lifecycle/r0;

    invoke-virtual {v0}, Landroidx/lifecycle/r0;->run()V

    :cond_0
    new-instance v0, Landroidx/lifecycle/r0;

    iget-object v1, p0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/v;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/r0;-><init>(Landroidx/lifecycle/v;Landroidx/lifecycle/m;)V

    iput-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    iget-object p1, p0, Lv1/t;->c:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    iget-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    iput-object v0, p0, Lv1/t;->c:Ljava/lang/Object;

    iput-object v0, p0, Lv1/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public final t(Lq/e;III)V
    .locals 3

    .line 1
    iget v0, p1, Lq/d;->b0:I

    .line 2
    .line 3
    iget v1, p1, Lq/d;->c0:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p1, Lq/d;->b0:I

    .line 7
    .line 8
    iput v2, p1, Lq/d;->c0:I

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Lq/d;->P(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p4}, Lq/d;->M(I)V

    .line 14
    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iput v2, p1, Lq/d;->b0:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p1, Lq/d;->b0:I

    .line 22
    .line 23
    :goto_0
    if-gez v1, :cond_1

    .line 24
    .line 25
    iput v2, p1, Lq/d;->c0:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput v1, p1, Lq/d;->c0:I

    .line 29
    .line 30
    :goto_1
    iget-object p1, p0, Lv1/t;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lq/e;

    .line 33
    .line 34
    iput p2, p1, Lq/e;->t0:I

    .line 35
    .line 36
    invoke-virtual {p1}, Lq/e;->S()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lv1/t;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lo/j;

    .line 14
    .line 15
    const-string v1, "[ "

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    const/16 v2, 0x9

    .line 21
    .line 22
    if-ge v0, v2, :cond_0

    .line 23
    .line 24
    invoke-static {v1}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lo/j;

    .line 31
    .line 32
    iget-object v2, v2, Lo/j;->h:[F

    .line 33
    .line 34
    aget v2, v2, v0

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "] "

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lo/j;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final u(Lq/e;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    const/4 v3, 0x1

    .line 17
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    iget-object v4, p1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lq/d;

    .line 26
    .line 27
    iget-object v5, v4, Lq/d;->p0:[I

    .line 28
    .line 29
    aget v6, v5, v1

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    if-eq v6, v7, :cond_0

    .line 33
    .line 34
    aget v3, v5, v3

    .line 35
    .line 36
    if-ne v3, v7, :cond_1

    .line 37
    .line 38
    :cond_0
    iget-object v3, p0, Lv1/t;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, p1, Lq/e;->s0:Lr/e;

    .line 49
    .line 50
    iput-boolean v3, p1, Lr/e;->b:Z

    .line 51
    .line 52
    return-void
.end method

.class public Lcom/zalexdev/stryker/StrykerApp;
.super Lcom/stryker/terminal/App;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/App;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/stryker/terminal/App;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lu3/e;->d(Landroid/content/Context;)Lu3/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "session"

    .line 10
    .line 11
    const-string v3, "==== Stryker 6.0.1 session start ===="

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lu3/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    if-lez v4, :cond_0

    .line 20
    .line 21
    aget-object v3, v3, v1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v3, "unknown"

    .line 25
    .line 26
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v5, "Device: "

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, " "

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v5, " \u00b7 Android "

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, " ("

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, ")"

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lu3/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Li5/a;->G(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x2

    .line 87
    invoke-static {v0}, Lx4/m;->H0(Ljava/util/Collection;)Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    const-wide/16 v9, -0x1

    .line 92
    .line 93
    const-wide/16 v7, -0x1

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    new-instance v0, Lm1/d;

    .line 100
    .line 101
    move-object v1, v0

    .line 102
    invoke-direct/range {v1 .. v11}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lm1/u;

    .line 106
    .line 107
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 108
    .line 109
    invoke-direct {v1, v2}, Lm1/u;-><init>(Ljava/util/concurrent/TimeUnit;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v1, Lm1/w;->b:Lv1/p;

    .line 113
    .line 114
    iput-object v0, v2, Lv1/p;->j:Lm1/d;

    .line 115
    .line 116
    invoke-virtual {v1}, Lm1/w;->a()Lm1/x;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lm1/v;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Ln1/a0;->M(Landroid/content/Context;)Ln1/a0;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1, v0}, Ln1/a0;->L(Lm1/v;)Lm1/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    :catch_0
    return-void
.end method

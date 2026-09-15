.class public final Lo4/o;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic s:[Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Z

.field public final synthetic v:Lo4/p;


# direct methods
.method public constructor <init>(Lo4/p;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/o;->v:Lo4/p;

    iput-object p5, p0, Lo4/o;->s:[Ljava/lang/String;

    iput-object p6, p0, Lo4/o;->t:Ljava/lang/String;

    iput-boolean p7, p0, Lo4/o;->u:Z

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo4/o;->v:Lo4/p;

    .line 2
    .line 3
    iget-object v1, v0, Lo4/p;->o:[Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput-object p1, v1, v2

    .line 7
    .line 8
    const-string v1, "available"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v3, "but"

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    :cond_0
    const-string v1, "Deauth failed! Passive mode now! Error: \n"

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v4, v0, Lo4/p;->o:[Ljava/lang/String;

    .line 31
    .line 32
    aput-object v1, v4, v2

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "\\s+"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    array-length v1, p1

    .line 51
    const/4 v3, 0x1

    .line 52
    sub-int/2addr v1, v3

    .line 53
    aget-object p1, p1, v1

    .line 54
    .line 55
    const-string v1, "\\d{1,3}"

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lo4/o;->s:[Ljava/lang/String;

    .line 64
    .line 65
    aget-object v5, v1, v2

    .line 66
    .line 67
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_1

    .line 72
    .line 73
    aput-object p1, v1, v2

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v5, "iw dev "

    .line 78
    .line 79
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Lo4/o;->t:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v5, " set channel "

    .line 88
    .line 89
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v1, p0, Ll4/c;->d:Ll4/l;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v5, Ljava/lang/Thread;

    .line 105
    .line 106
    new-instance v6, Ll4/k;

    .line 107
    .line 108
    invoke-direct {v6, v1, p1, v3}, Ll4/k;-><init>(Ll4/l;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 115
    .line 116
    .line 117
    :cond_1
    iget-boolean p1, p0, Lo4/o;->u:Z

    .line 118
    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    const-string p1, "Can`t deauth with (s)wlan0 interface! Passive mode!"

    .line 122
    .line 123
    aput-object p1, v4, v2

    .line 124
    .line 125
    :cond_2
    iget-object p1, v0, Lo4/p;->q:Lo4/u;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object p1, v0, Lo4/p;->l:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-static {p1}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    return-void
.end method

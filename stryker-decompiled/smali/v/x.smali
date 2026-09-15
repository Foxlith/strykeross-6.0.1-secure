.class public final Lv/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/CharSequence;

.field public final g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lv/x;->d:Z

    .line 19
    .line 20
    iput-object p1, p0, Lv/x;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget v2, p1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    iget-object v3, p1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 32
    .line 33
    const-string v4, "Unable to get icon type "

    .line 34
    .line 35
    const-string v5, "IconCompat"

    .line 36
    .line 37
    const/16 v6, 0x1c

    .line 38
    .line 39
    if-lt v2, v6, :cond_1

    .line 40
    .line 41
    invoke-static {v3}, La0/f;->c(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    goto :goto_5

    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v6, "getType"

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    new-array v8, v7, [Ljava/lang/Class;

    .line 54
    .line 55
    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-array v6, v7, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_5

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :catch_2
    move-exception p1

    .line 77
    goto :goto_4

    .line 78
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v5, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    :goto_5
    const/4 v3, 0x2

    .line 107
    if-ne v2, v3, :cond_3

    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lv/x;->e:I

    .line 114
    .line 115
    :cond_3
    :goto_6
    invoke-static {p2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lv/x;->f:Ljava/lang/CharSequence;

    .line 120
    .line 121
    iput-object p3, p0, Lv/x;->g:Landroid/app/PendingIntent;

    .line 122
    .line 123
    iput-object v0, p0, Lv/x;->a:Landroid/os/Bundle;

    .line 124
    .line 125
    iput-boolean v1, p0, Lv/x;->c:Z

    .line 126
    .line 127
    iput-boolean v1, p0, Lv/x;->d:Z

    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/x;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Lv/x;->e:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Lv/x;->b:Landroidx/core/graphics/drawable/IconCompat;

    :cond_0
    iget-object v0, p0, Lv/x;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.class public abstract Le0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/f;

.field public static final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ln/k;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ln/f;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln/f;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Le0/i;->a:Ln/f;

    .line 9
    .line 10
    new-instance v9, Le0/m;

    .line 11
    .line 12
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "fonts-androidx"

    .line 16
    .line 17
    iput-object v0, v9, Le0/m;->a:Ljava/lang/String;

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    iput v0, v9, Le0/m;->b:I

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    const/16 v1, 0x2710

    .line 28
    .line 29
    int-to-long v5, v1

    .line 30
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 33
    .line 34
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 35
    .line 36
    .line 37
    move-object v2, v0

    .line 38
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Le0/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/Object;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Le0/i;->c:Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v0, Ln/k;

    .line 55
    .line 56
    invoke-direct {v0}, Ln/k;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v0, Le0/i;->d:Ln/k;

    .line 60
    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Le0/e;I)Le0/h;
    .locals 7

    .line 1
    sget-object v0, Le0/i;->a:Ln/f;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ln/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/graphics/Typeface;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance p0, Le0/h;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Le0/h;-><init>(Landroid/graphics/Typeface;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Le0/d;->a(Landroid/content/Context;Le0/e;)Le0/j;

    .line 18
    .line 19
    .line 20
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget v1, p2, Le0/j;->a:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, -0x3

    .line 25
    iget-object p2, p2, Le0/j;->b:Ljava/lang/Object;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    :goto_0
    move v2, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const/4 v2, -0x2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move-object v1, p2

    .line 36
    check-cast v1, [Le0/k;

    .line 37
    .line 38
    if-eqz v1, :cond_7

    .line 39
    .line 40
    array-length v4, v1

    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    array-length v2, v1

    .line 45
    const/4 v4, 0x0

    .line 46
    move v5, v4

    .line 47
    :goto_1
    if-ge v5, v2, :cond_6

    .line 48
    .line 49
    aget-object v6, v1, v5

    .line 50
    .line 51
    iget v6, v6, Le0/k;->e:I

    .line 52
    .line 53
    if-eqz v6, :cond_5

    .line 54
    .line 55
    if-gez v6, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    move v2, v6

    .line 59
    goto :goto_2

    .line 60
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_6
    move v2, v4

    .line 64
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 65
    .line 66
    new-instance p0, Le0/h;

    .line 67
    .line 68
    invoke-direct {p0, v2}, Le0/h;-><init>(I)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_8
    check-cast p2, [Le0/k;

    .line 73
    .line 74
    sget-object v1, Lz/j;->a:Lf/q0;

    .line 75
    .line 76
    invoke-virtual {v1, p1, p2, p3}, Lf/q0;->y(Landroid/content/Context;[Le0/k;I)Landroid/graphics/Typeface;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_9

    .line 81
    .line 82
    invoke-virtual {v0, p0, p1}, Ln/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    new-instance p0, Le0/h;

    .line 86
    .line 87
    invoke-direct {p0, p1}, Le0/h;-><init>(Landroid/graphics/Typeface;)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_9
    new-instance p0, Le0/h;

    .line 92
    .line 93
    invoke-direct {p0, v3}, Le0/h;-><init>(I)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :catch_0
    new-instance p0, Le0/h;

    .line 98
    .line 99
    const/4 p1, -0x1

    .line 100
    invoke-direct {p0, p1}, Le0/h;-><init>(I)V

    .line 101
    .line 102
    .line 103
    return-object p0
.end method

.class public abstract Lt5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr5/t;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "kotlinx.coroutines.fast.service.loader"

    .line 2
    .line 3
    sget v1, Lt5/j;->a:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-object v0, v1

    .line 12
    :goto_0
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/ec/a;->n()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "<this>"

    .line 23
    .line 24
    invoke-static {v0, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroidx/core/view/h1;

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-direct {v2, v0, v3}, Landroidx/core/view/h1;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    instance-of v0, v2, Lp5/a;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    new-instance v0, Lp5/a;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lp5/a;-><init>(Landroidx/core/view/h1;)V

    .line 41
    .line 42
    .line 43
    move-object v2, v0

    .line 44
    :goto_2
    invoke-static {v2}, Lp5/j;->k1(Lp5/g;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    move-object v3, v1

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move-object v4, v3

    .line 72
    check-cast v4, Lt5/g;

    .line 73
    .line 74
    invoke-interface {v4}, Lt5/g;->getLoadPriority()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    move-object v6, v5

    .line 83
    check-cast v6, Lt5/g;

    .line 84
    .line 85
    invoke-interface {v6}, Lt5/g;->getLoadPriority()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-ge v4, v6, :cond_5

    .line 90
    .line 91
    move-object v3, v5

    .line 92
    move v4, v6

    .line 93
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    :goto_3
    check-cast v3, Lt5/g;

    .line 100
    .line 101
    if-nez v3, :cond_6

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    :try_start_1
    invoke-interface {v3, v0}, Lt5/g;->createDispatcher(Ljava/util/List;)Lr5/t;

    .line 105
    .line 106
    .line 107
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    goto :goto_4

    .line 109
    :catchall_0
    invoke-interface {v3}, Lt5/g;->hintOnError()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    :goto_4
    if-eqz v1, :cond_7

    .line 113
    .line 114
    sput-object v1, Lt5/h;->a:Lr5/t;

    .line 115
    .line 116
    return-void

    .line 117
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.class public final Landroidx/lifecycle/m0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/lifecycle/m0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/lifecycle/m0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/lifecycle/m0;->a:I

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/lifecycle/m0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return-object v2

    .line 11
    :pswitch_0
    check-cast v2, Ld1/g;

    .line 12
    .line 13
    iget-object v1, v2, Ld1/g;->b:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v3, 0x17

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-boolean v1, v2, Ld1/g;->d:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/io/File;

    .line 25
    .line 26
    iget-object v5, v2, Ld1/g;->a:Landroid/content/Context;

    .line 27
    .line 28
    const-string v6, "context"

    .line 29
    .line 30
    invoke-static {v5, v6}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "context.noBackupFilesDir"

    .line 38
    .line 39
    invoke-static {v5, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v6, v2, Ld1/g;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Ld1/f;

    .line 48
    .line 49
    iget-object v8, v2, Ld1/g;->a:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    new-instance v10, Lf/q0;

    .line 56
    .line 57
    invoke-direct {v10, v4, v3}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    iget-object v11, v2, Ld1/g;->c:Landroidx/fragment/app/t0;

    .line 61
    .line 62
    iget-boolean v12, v2, Ld1/g;->e:Z

    .line 63
    .line 64
    move-object v7, v5

    .line 65
    invoke-direct/range {v7 .. v12}, Ld1/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/q0;Landroidx/fragment/app/t0;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance v5, Ld1/f;

    .line 70
    .line 71
    iget-object v14, v2, Ld1/g;->a:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v15, v2, Ld1/g;->b:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v1, Lf/q0;

    .line 76
    .line 77
    invoke-direct {v1, v4, v3}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v2, Ld1/g;->c:Landroidx/fragment/app/t0;

    .line 81
    .line 82
    iget-boolean v4, v2, Ld1/g;->e:Z

    .line 83
    .line 84
    move-object v13, v5

    .line 85
    move-object/from16 v16, v1

    .line 86
    .line 87
    move-object/from16 v17, v3

    .line 88
    .line 89
    move/from16 v18, v4

    .line 90
    .line 91
    invoke-direct/range {v13 .. v18}, Ld1/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/q0;Landroidx/fragment/app/t0;Z)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-boolean v1, v2, Ld1/g;->g:Z

    .line 95
    .line 96
    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 97
    .line 98
    .line 99
    return-object v5

    .line 100
    :pswitch_1
    check-cast v2, Landroidx/appcompat/view/menu/d;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/d;->m()Lc1/h;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    return-object v1

    .line 107
    :pswitch_2
    check-cast v2, Landroidx/lifecycle/y0;

    .line 108
    .line 109
    invoke-static {v2}, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/y0;)Landroidx/lifecycle/o0;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    return-object v1

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

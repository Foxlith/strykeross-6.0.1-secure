.class public final synthetic Lh4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

.field public final synthetic b:Landroid/widget/ProgressBar;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/ProgressBar;

.field public final synthetic f:Landroid/widget/ImageView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic k:Landroid/widget/ProgressBar;

.field public final synthetic l:Landroid/widget/ImageView;

.field public final synthetic m:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/g;->a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    iput-object p2, p0, Lh4/g;->b:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lh4/g;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lh4/g;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lh4/g;->e:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lh4/g;->f:Landroid/widget/ImageView;

    iput-object p7, p0, Lh4/g;->g:Landroid/widget/TextView;

    iput-object p8, p0, Lh4/g;->h:Landroid/view/View;

    iput-object p9, p0, Lh4/g;->i:Landroid/view/View;

    iput-object p10, p0, Lh4/g;->j:Lcom/google/android/material/button/MaterialButton;

    iput-object p11, p0, Lh4/g;->k:Landroid/widget/ProgressBar;

    iput-object p12, p0, Lh4/g;->l:Landroid/widget/ImageView;

    iput-object p13, p0, Lh4/g;->m:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v4, v0, Lh4/g;->b:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    iget-object v5, v0, Lh4/g;->c:Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v6, v0, Lh4/g;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v13, v0, Lh4/g;->e:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    iget-object v14, v0, Lh4/g;->f:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object v15, v0, Lh4/g;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v12, v0, Lh4/g;->h:Landroid/view/View;

    .line 16
    .line 17
    iget-object v11, v0, Lh4/g;->i:Landroid/view/View;

    .line 18
    .line 19
    iget-object v10, v0, Lh4/g;->j:Lcom/google/android/material/button/MaterialButton;

    .line 20
    .line 21
    iget-object v9, v0, Lh4/g;->k:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    iget-object v8, v0, Lh4/g;->l:Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object v7, v0, Lh4/g;->m:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v3, v0, Lh4/g;->a:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 28
    .line 29
    iget-object v1, v3, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 30
    .line 31
    invoke-virtual {v1}, Ll4/l;->s0()Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v16

    .line 39
    new-instance v2, Lh4/i;

    .line 40
    .line 41
    move-object v1, v2

    .line 42
    move-object v0, v2

    .line 43
    move-object v2, v3

    .line 44
    move-object/from16 v24, v3

    .line 45
    .line 46
    move/from16 v3, v16

    .line 47
    .line 48
    move-object/from16 v20, v7

    .line 49
    .line 50
    move-object v7, v13

    .line 51
    move-object/from16 v19, v8

    .line 52
    .line 53
    move-object v8, v14

    .line 54
    move-object/from16 v18, v9

    .line 55
    .line 56
    move-object v9, v15

    .line 57
    move-object/from16 v22, v10

    .line 58
    .line 59
    move-object v10, v12

    .line 60
    move-object/from16 v17, v11

    .line 61
    .line 62
    move-object/from16 v21, v12

    .line 63
    .line 64
    move-object/from16 v12, v22

    .line 65
    .line 66
    invoke-direct/range {v1 .. v12}, Lh4/i;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;ZLandroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v1, v24

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->h(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    if-nez v16, :cond_0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 78
    .line 79
    const-string v2, "/data/local/stryker"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ll4/l;->i0(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    new-instance v0, Lh4/j;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    move-object v7, v0

    .line 91
    move-object v8, v1

    .line 92
    move-object v9, v13

    .line 93
    move-object v10, v14

    .line 94
    move-object v11, v15

    .line 95
    move-object/from16 v12, v21

    .line 96
    .line 97
    move-object/from16 v13, v17

    .line 98
    .line 99
    move-object/from16 v14, v22

    .line 100
    .line 101
    move v15, v2

    .line 102
    invoke-direct/range {v7 .. v15}, Lh4/j;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->h(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    new-instance v0, Lh4/j;

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    move-object v7, v0

    .line 113
    move-object v8, v1

    .line 114
    move-object v9, v13

    .line 115
    move-object v10, v14

    .line 116
    move-object v11, v15

    .line 117
    move-object/from16 v12, v18

    .line 118
    .line 119
    move-object/from16 v13, v19

    .line 120
    .line 121
    move-object/from16 v14, v20

    .line 122
    .line 123
    move v15, v2

    .line 124
    invoke-direct/range {v7 .. v15}, Lh4/j;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->h(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    const-wide/16 v2, 0x1f4

    .line 131
    .line 132
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    :catch_0
    iget-object v0, v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 136
    .line 137
    const-string v2, "pm uninstall com.zalexdev.stryker"

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    new-instance v0, Lw2/l;

    .line 143
    .line 144
    const/16 v23, 0x1

    .line 145
    .line 146
    move-object/from16 v16, v0

    .line 147
    .line 148
    move-object/from16 v17, v1

    .line 149
    .line 150
    invoke-direct/range {v16 .. v23}, Lw2/l;-><init>(Ljava/lang/Object;Landroid/widget/ProgressBar;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :goto_1
    return-void
.end method

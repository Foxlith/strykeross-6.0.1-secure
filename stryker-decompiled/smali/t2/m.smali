.class public final Lt2/m;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/util/ArrayList;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 1

    iput p4, p0, Lt2/m;->a:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p2, p0, Lt2/m;->d:Ljava/lang/Object;

    iput-object p1, p0, Lt2/m;->c:Landroid/content/Context;

    new-instance p2, Ll4/l;

    invoke-direct {p2, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lt2/m;->e:Ljava/lang/Object;

    iput-object p3, p0, Lt2/m;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x4

    if-ge p2, p4, :cond_0

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 2
    :cond_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p1, p0, Lt2/m;->c:Landroid/content/Context;

    iput-object p3, p0, Lt2/m;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lt2/m;->d:Ljava/lang/Object;

    new-instance p2, Ll4/l;

    invoke-direct {p2, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lt2/m;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld4/q;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lt2/m;->a:I

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt2/m;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt2/m;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lt2/m;->c:Landroid/content/Context;

    iput-object p2, p0, Lt2/m;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x64

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public final a(Lw5/h;Ljava/lang/String;II)V
    .locals 2

    .line 1
    iget-object v0, p1, Lw5/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p2, " "

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    iget-object p2, p1, Lw5/h;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p2, Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object p3, p0, Lt2/m;->c:Landroid/content/Context;

    .line 35
    .line 36
    sget-object p4, Lx/g;->a:Ljava/lang/Object;

    .line 37
    .line 38
    const p4, 0x7f060074

    .line 39
    .line 40
    .line 41
    invoke-static {p3, p4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lw5/h;->a:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lt2/m;->c:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p2, p4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 63
    .line 64
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p2, p1, Lw5/h;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p2, Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Lw5/h;->a:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 84
    .line 85
    invoke-virtual {p1, p4, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lt2/m;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v1, "Confirmation"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const-string v1, "Are you sure to delete this saved network?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lt2/m;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13076f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/stryker/terminal/utils/b;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, p0}, Lcom/stryker/terminal/utils/b;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/stryker/terminal/setup/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lt2/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt2/m;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :pswitch_1
    iget-object v0, p0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 5

    .line 1
    iget v0, p0, Lt2/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lt2/m;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/zalexdev/stryker/custom/Site;

    .line 26
    .line 27
    iget-object v1, p0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    int-to-long v1, p1

    .line 40
    const/16 p1, 0x20

    .line 41
    .line 42
    shl-long/2addr v1, p1

    .line 43
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_0
    int-to-long v3, p1

    .line 60
    xor-long v0, v1, v3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    .line 64
    .line 65
    :goto_2
    return-wide v0

    .line 66
    :pswitch_0
    int-to-long v0, p1

    .line 67
    return-wide v0

    .line 68
    :pswitch_1
    int-to-long v0, p1

    .line 69
    return-wide v0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget v0, p0, Lt2/m;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->getItemViewType(I)I

    move-result p1

    :pswitch_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lt2/m;->a:I

    .line 6
    .line 7
    const-string v3, ")"

    .line 8
    .line 9
    const-string v4, " ("

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    packed-switch v2, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    check-cast v2, Ld4/r;

    .line 22
    .line 23
    iget-object v3, v0, Lt2/m;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/zalexdev/stryker/custom/Site;

    .line 32
    .line 33
    iget-object v4, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v4, v2, Ld4/r;->b:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, v3, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v4}, Landroid/support/v4/media/session/a;->d(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v4}, Lo/i;->c(I)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    const/16 v11, 0x8

    .line 65
    .line 66
    iget-object v12, v2, Ld4/r;->e:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 67
    .line 68
    iget-object v13, v2, Ld4/r;->c:Landroid/widget/TextView;

    .line 69
    .line 70
    if-eq v10, v9, :cond_2

    .line 71
    .line 72
    if-eq v10, v6, :cond_1

    .line 73
    .line 74
    if-eq v10, v7, :cond_0

    .line 75
    .line 76
    iget-object v10, v0, Lt2/m;->c:Landroid/content/Context;

    .line 77
    .line 78
    sget-object v14, Lx/g;->a:Ljava/lang/Object;

    .line 79
    .line 80
    const v14, 0x7f060074

    .line 81
    .line 82
    .line 83
    invoke-static {v10, v14}, Lx/d;->a(Landroid/content/Context;I)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    const v14, 0x7f1304fd

    .line 88
    .line 89
    .line 90
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    const-string v12, "QUEUE"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    iget-object v10, v0, Lt2/m;->c:Landroid/content/Context;

    .line 100
    .line 101
    sget-object v14, Lx/g;->a:Ljava/lang/Object;

    .line 102
    .line 103
    const v14, 0x7f060302

    .line 104
    .line 105
    .line 106
    invoke-static {v10, v14}, Lx/d;->a(Landroid/content/Context;I)I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    const v14, 0x7f1304f8

    .line 111
    .line 112
    .line 113
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    const-string v12, "FAIL"

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    iget-object v10, v0, Lt2/m;->c:Landroid/content/Context;

    .line 123
    .line 124
    sget-object v14, Lx/g;->a:Ljava/lang/Object;

    .line 125
    .line 126
    const v14, 0x7f060073

    .line 127
    .line 128
    .line 129
    invoke-static {v10, v14}, Lx/d;->a(Landroid/content/Context;I)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    const v14, 0x7f1304f9

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    const-string v12, "DONE"

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    iget-object v10, v3, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v10}, Lt2/m;->b(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    iget-object v14, v0, Lt2/m;->c:Landroid/content/Context;

    .line 152
    .line 153
    sget-object v15, Lx/g;->a:Ljava/lang/Object;

    .line 154
    .line 155
    const v15, 0x7f060316

    .line 156
    .line 157
    .line 158
    invoke-static {v14, v15}, Lx/d;->a(Landroid/content/Context;I)I

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    iget-object v15, v0, Lt2/m;->c:Landroid/content/Context;

    .line 163
    .line 164
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v16

    .line 168
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    const v6, 0x7f1304fb

    .line 173
    .line 174
    .line 175
    invoke-virtual {v15, v6, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    if-lez v10, :cond_3

    .line 186
    .line 187
    invoke-virtual {v12, v8}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v12, v10, v9}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setProgressCompat(IZ)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {v12, v9}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 195
    .line 196
    .line 197
    :goto_0
    const-string v12, "RUN"

    .line 198
    .line 199
    move v10, v14

    .line 200
    :goto_1
    iget-object v6, v2, Ld4/r;->d:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    if-eqz v11, :cond_4

    .line 213
    .line 214
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 223
    .line 224
    invoke-virtual {v11, v10, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    const/16 v10, 0x28

    .line 232
    .line 233
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    .line 235
    .line 236
    :cond_4
    iget-object v6, v3, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    .line 237
    .line 238
    if-eqz v6, :cond_5

    .line 239
    .line 240
    array-length v10, v6

    .line 241
    if-lt v10, v5, :cond_5

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_5
    filled-new-array {v8, v8, v8, v8}, [I

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    :goto_2
    array-length v10, v6

    .line 249
    if-le v10, v5, :cond_6

    .line 250
    .line 251
    aget v5, v6, v5

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_6
    move v5, v8

    .line 255
    :goto_3
    const v10, -0x48e3e4

    .line 256
    .line 257
    .line 258
    const-string v11, "C"

    .line 259
    .line 260
    iget-object v12, v2, Ld4/r;->i:Lw5/h;

    .line 261
    .line 262
    invoke-virtual {v0, v12, v11, v5, v10}, Lt2/m;->a(Lw5/h;Ljava/lang/String;II)V

    .line 263
    .line 264
    .line 265
    aget v5, v6, v7

    .line 266
    .line 267
    iget-object v10, v2, Ld4/r;->j:Lw5/h;

    .line 268
    .line 269
    const-string v11, "H"

    .line 270
    .line 271
    const v12, -0x2cd0d1

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v10, v11, v5, v12}, Lt2/m;->a(Lw5/h;Ljava/lang/String;II)V

    .line 275
    .line 276
    .line 277
    const/4 v5, 0x2

    .line 278
    aget v10, v6, v5

    .line 279
    .line 280
    iget-object v5, v2, Ld4/r;->k:Lw5/h;

    .line 281
    .line 282
    const-string v11, "M"

    .line 283
    .line 284
    const v12, -0x109400

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v5, v11, v10, v12}, Lt2/m;->a(Lw5/h;Ljava/lang/String;II)V

    .line 288
    .line 289
    .line 290
    aget v5, v6, v9

    .line 291
    .line 292
    iget-object v10, v2, Ld4/r;->l:Lw5/h;

    .line 293
    .line 294
    const-string v11, "L"

    .line 295
    .line 296
    const v12, -0x657db

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v10, v11, v5, v12}, Lt2/m;->a(Lw5/h;Ljava/lang/String;II)V

    .line 300
    .line 301
    .line 302
    aget v5, v6, v8

    .line 303
    .line 304
    iget-object v6, v2, Ld4/r;->m:Lw5/h;

    .line 305
    .line 306
    const-string v10, "I"

    .line 307
    .line 308
    const v11, -0xea9a40

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v6, v10, v5, v11}, Lt2/m;->a(Lw5/h;Ljava/lang/String;II)V

    .line 312
    .line 313
    .line 314
    const/4 v5, 0x2

    .line 315
    if-ne v4, v5, :cond_7

    .line 316
    .line 317
    move v11, v8

    .line 318
    goto :goto_4

    .line 319
    :cond_7
    const/16 v11, 0x8

    .line 320
    .line 321
    :goto_4
    iget-object v4, v2, Ld4/r;->f:Lcom/google/android/material/button/MaterialButton;

    .line 322
    .line 323
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    new-instance v5, Ld4/p;

    .line 327
    .line 328
    invoke-direct {v5, v0, v1, v3, v8}, Ld4/p;-><init>(Lt2/m;ILcom/zalexdev/stryker/custom/Site;I)V

    .line 329
    .line 330
    .line 331
    iget-object v6, v2, Ld4/r;->a:Landroid/view/View;

    .line 332
    .line 333
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    .line 335
    .line 336
    new-instance v5, Ld4/p;

    .line 337
    .line 338
    invoke-direct {v5, v0, v1, v3, v9}, Ld4/p;-><init>(Lt2/m;ILcom/zalexdev/stryker/custom/Site;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    new-instance v4, Ld4/p;

    .line 345
    .line 346
    const/4 v5, 0x2

    .line 347
    invoke-direct {v4, v0, v1, v3, v5}, Ld4/p;-><init>(Lt2/m;ILcom/zalexdev/stryker/custom/Site;I)V

    .line 348
    .line 349
    .line 350
    iget-object v5, v2, Ld4/r;->g:Lcom/google/android/material/button/MaterialButton;

    .line 351
    .line 352
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    new-instance v4, Ld4/p;

    .line 356
    .line 357
    invoke-direct {v4, v0, v1, v3, v7}, Ld4/p;-><init>(Lt2/m;ILcom/zalexdev/stryker/custom/Site;I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v2, Ld4/r;->h:Landroid/widget/ImageView;

    .line 361
    .line 362
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :pswitch_0
    move-object/from16 v2, p1

    .line 367
    .line 368
    check-cast v2, Li4/c;

    .line 369
    .line 370
    iget-object v6, v2, Li4/c;->a:Landroid/widget/TextView;

    .line 371
    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    iget-object v10, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    check-cast v10, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 384
    .line 385
    invoke-virtual {v10}, Lcom/zalexdev/stryker/custom/UsbDev;->getIfc()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    iget-object v4, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    check-cast v4, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 402
    .line 403
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/UsbDev;->getPid()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .line 419
    .line 420
    iget-object v3, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    check-cast v3, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 427
    .line 428
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/UsbDev;->getCommandMon()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    iget-object v4, v2, Li4/c;->b:Landroid/widget/TextView;

    .line 433
    .line 434
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    new-instance v3, Li4/a;

    .line 438
    .line 439
    invoke-direct {v3, v0, v1, v8}, Li4/a;-><init>(Lt2/m;II)V

    .line 440
    .line 441
    .line 442
    iget-object v4, v2, Li4/c;->d:Landroid/widget/ImageView;

    .line 443
    .line 444
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    .line 446
    .line 447
    new-instance v3, Li4/a;

    .line 448
    .line 449
    invoke-direct {v3, v0, v1, v9}, Li4/a;-><init>(Lt2/m;II)V

    .line 450
    .line 451
    .line 452
    iget-object v2, v2, Li4/c;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 453
    .line 454
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    .line 456
    .line 457
    iget-object v2, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 464
    .line 465
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/UsbDev;->getPid()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    const-string v2, "wlan0"

    .line 470
    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_8

    .line 476
    .line 477
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    .line 479
    .line 480
    goto :goto_5

    .line 481
    :cond_8
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    .line 483
    .line 484
    :goto_5
    return-void

    .line 485
    :pswitch_1
    move-object/from16 v2, p1

    .line 486
    .line 487
    check-cast v2, Lt2/l;

    .line 488
    .line 489
    iget-object v5, v2, Lt2/l;->a:Landroid/widget/TextView;

    .line 490
    .line 491
    new-instance v6, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .line 495
    .line 496
    iget-object v10, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    check-cast v10, Ljava/util/ArrayList;

    .line 503
    .line 504
    const/4 v11, 0x2

    .line 505
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    check-cast v10, Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    iget-object v4, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    check-cast v4, Ljava/util/ArrayList;

    .line 524
    .line 525
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    check-cast v4, Ljava/lang/String;

    .line 530
    .line 531
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    .line 547
    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    iget-object v4, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    check-cast v4, Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    check-cast v4, Ljava/lang/String;

    .line 566
    .line 567
    iget-object v5, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    check-cast v5, Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    check-cast v5, Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    if-nez v6, :cond_9

    .line 586
    .line 587
    const-string v6, "Password: "

    .line 588
    .line 589
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 596
    .line 597
    .line 598
    move-result v6

    .line 599
    if-nez v6, :cond_b

    .line 600
    .line 601
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 602
    .line 603
    .line 604
    move-result v4

    .line 605
    if-nez v4, :cond_a

    .line 606
    .line 607
    const-string v4, "\n"

    .line 608
    .line 609
    goto :goto_6

    .line 610
    :cond_a
    const-string v4, ""

    .line 611
    .line 612
    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v4, "WPS Pin: "

    .line 616
    .line 617
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    iget-object v4, v2, Lt2/l;->b:Landroid/widget/TextView;

    .line 628
    .line 629
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    .line 631
    .line 632
    new-instance v3, Lt2/i;

    .line 633
    .line 634
    invoke-direct {v3, v0, v1, v8}, Lt2/i;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 635
    .line 636
    .line 637
    iget-object v4, v2, Lt2/l;->d:Landroid/widget/ImageView;

    .line 638
    .line 639
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    .line 641
    .line 642
    new-instance v3, Lt2/j;

    .line 643
    .line 644
    invoke-direct {v3, v0, v8}, Lt2/j;-><init>(Ljava/lang/Object;I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 648
    .line 649
    .line 650
    new-instance v3, Lt2/i;

    .line 651
    .line 652
    invoke-direct {v3, v0, v1, v9}, Lt2/i;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 653
    .line 654
    .line 655
    iget-object v4, v2, Lt2/l;->c:Landroid/widget/ImageView;

    .line 656
    .line 657
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    .line 659
    .line 660
    new-instance v3, Lt2/k;

    .line 661
    .line 662
    invoke-direct {v3, v0, v1}, Lt2/k;-><init>(Lt2/m;I)V

    .line 663
    .line 664
    new-instance v4, Lt2/o;

    .line 665
    invoke-direct {v4, v0, v1}, Lt2/o;-><init>(Lt2/m;I)V

    .line 666
    iget-object v5, v2, Lt2/l;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 667
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    .line 669
    iget-object v1, v2, Lt2/l;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 666
    .line 667
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 668
    .line 669
    .line 670
    return-void

    .line 671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget p2, p0, Lt2/m;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p2, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const v1, 0x7f0d0079

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Ld4/r;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Ld4/r;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :pswitch_0
    iget-object p2, p0, Lt2/m;->c:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const v1, 0x7f0d0028

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Li4/c;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a0685

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p2, Li4/c;->b:Landroid/widget/TextView;

    .line 56
    .line 57
    const v0, 0x7f0a068d

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v0, p2, Li4/c;->a:Landroid/widget/TextView;

    .line 67
    .line 68
    const v0, 0x7f0a018c

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .line 77
    iput-object v0, p2, Li4/c;->d:Landroid/widget/ImageView;

    .line 78
    .line 79
    const v0, 0x7f0a0684

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 87
    .line 88
    iput-object p1, p2, Li4/c;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 89
    .line 90
    return-object p2

    .line 91
    :pswitch_1
    iget-object p2, p0, Lt2/m;->c:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const v1, 0x7f0d0104

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance p2, Lt2/l;

    .line 105
    .line 106
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    const v0, 0x7f0a0416

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/TextView;

    .line 117
    .line 118
    iput-object v0, p2, Lt2/l;->a:Landroid/widget/TextView;

    .line 119
    .line 120
    const v0, 0x7f0a007d

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object v0, p2, Lt2/l;->b:Landroid/widget/TextView;

    .line 130
    .line 131
    const v0, 0x7f0a0188

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .line 140
    iput-object v0, p2, Lt2/l;->c:Landroid/widget/ImageView;

    .line 141
    .line 142
    const v0, 0x7f0a014e

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/ImageView;

    .line 150
    .line 151
    iput-object v0, p2, Lt2/l;->d:Landroid/widget/ImageView;

    .line 152
    .line 153
    const v0, 0x7f0a02fe

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 161
    .line 162
    iput-object p1, p2, Lt2/l;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 163
    .line 164
    return-object p2

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

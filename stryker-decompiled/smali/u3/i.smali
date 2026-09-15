.class public final Lu3/i;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# static fields
.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;

.field public final c:Ljava/text/SimpleDateFormat;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "#4FC3F7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->e:I

    const-string v0, "#CFD8DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->f:I

    const-string v0, "#EF5350"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->g:I

    const-string v0, "#FFB74D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->h:I

    const-string v0, "#81C784"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->i:I

    const-string v0, "#90A4AE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->j:I

    const-string v0, "#607D8B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->k:I

    const-string v0, "#B39DDB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->l:I

    const-string v0, "#664FC3F7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lu3/i;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lu3/i;->c:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lu3/i;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu3/i;->b:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/a;

    iget-wide v0, p1, Lu3/a;->a:J

    return-wide v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 8

    .line 1
    check-cast p1, Lu3/h;

    .line 2
    .line 3
    iget-object v0, p0, Lu3/i;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lu3/a;

    .line 10
    .line 11
    iget v0, p2, Lu3/a;->c:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_4

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    if-eq v0, v2, :cond_0

    .line 27
    .line 28
    sget v0, Lu3/i;->j:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget v0, Lu3/i;->i:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget v0, Lu3/i;->h:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget v0, Lu3/i;->g:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget v0, Lu3/i;->f:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    sget v0, Lu3/i;->e:I

    .line 44
    .line 45
    :goto_0
    iget-object v2, p1, Lu3/h;->a:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lu3/i;->c:Ljava/text/SimpleDateFormat;

    .line 51
    .line 52
    new-instance v3, Ljava/util/Date;

    .line 53
    .line 54
    iget-wide v4, p2, Lu3/a;->b:J

    .line 55
    .line 56
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p1, Lu3/h;->b:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    sget v2, Lu3/i;->k:I

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p2, Lu3/a;->d:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v3, p1, Lu3/h;->c:Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 v4, 0x0

    .line 87
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    sget v2, Lu3/i;->l:I

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    :goto_1
    const/16 v2, 0x8

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    :goto_2
    iget-object p1, p1, Lu3/h;->d:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lu3/i;->d:Ljava/lang/String;

    .line 110
    .line 111
    iget-object p2, p2, Lu3/a;->e:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v0, :cond_a

    .line 114
    .line 115
    if-nez p2, :cond_7

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 119
    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v3, p0, Lu3/i;->d:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-gez v3, :cond_8

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    new-instance v4, Landroid/text/SpannableString;

    .line 138
    .line 139
    invoke-direct {v4, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    if-ltz v3, :cond_9

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    add-int/2addr p2, v3

    .line 149
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    .line 150
    .line 151
    sget v6, Lu3/i;->m:I

    .line 152
    .line 153
    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 154
    .line 155
    .line 156
    const/16 v6, 0x21

    .line 157
    .line 158
    invoke-virtual {v4, v5, v3, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    .line 160
    .line 161
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 162
    .line 163
    const/4 v7, -0x1

    .line 164
    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v5, v3, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 168
    .line 169
    .line 170
    new-instance v5, Landroid/text/style/StyleSpan;

    .line 171
    .line 172
    invoke-direct {v5, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v5, v3, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    goto :goto_3

    .line 183
    :cond_9
    move-object p2, v4

    .line 184
    :cond_a
    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget-object p2, p0, Lu3/i;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d008b

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lu3/h;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lu3/h;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

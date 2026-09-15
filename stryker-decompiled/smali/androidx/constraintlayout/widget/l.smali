.class public final Landroidx/constraintlayout/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Landroid/util/SparseIntArray;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/l;->j:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/s;->f:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p2, :cond_4

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget-object v3, Landroidx/constraintlayout/widget/l;->j:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x3

    .line 26
    packed-switch v3, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, -0x1

    .line 39
    if-ne v3, v5, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iput-object v3, p0, Landroidx/constraintlayout/widget/l;->h:Ljava/lang/String;

    .line 49
    .line 50
    const-string v4, "/"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_3

    .line 57
    .line 58
    :goto_1
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iput v2, p0, Landroidx/constraintlayout/widget/l;->i:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/widget/l;->i:I

    .line 66
    .line 67
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :pswitch_1
    iget v3, p0, Landroidx/constraintlayout/widget/l;->f:F

    .line 72
    .line 73
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iput v2, p0, Landroidx/constraintlayout/widget/l;->f:F

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :pswitch_2
    iget v3, p0, Landroidx/constraintlayout/widget/l;->g:I

    .line 81
    .line 82
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput v2, p0, Landroidx/constraintlayout/widget/l;->g:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :pswitch_3
    iget v3, p0, Landroidx/constraintlayout/widget/l;->d:F

    .line 90
    .line 91
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput v2, p0, Landroidx/constraintlayout/widget/l;->d:F

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :pswitch_4
    iget v3, p0, Landroidx/constraintlayout/widget/l;->b:I

    .line 99
    .line 100
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iput v2, p0, Landroidx/constraintlayout/widget/l;->b:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :pswitch_5
    iget v3, p0, Landroidx/constraintlayout/widget/l;->a:I

    .line 108
    .line 109
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, p0, Landroidx/constraintlayout/widget/l;->a:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :pswitch_6
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_7
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 125
    .line 126
    if-ne v3, v4, :cond_2

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    sget-object v3, Lp/a;->a:[Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    aget-object v2, v3, v2

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_8
    iget v3, p0, Landroidx/constraintlayout/widget/l;->c:I

    .line 142
    .line 143
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    iput v2, p0, Landroidx/constraintlayout/widget/l;->c:I

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_9
    iget v3, p0, Landroidx/constraintlayout/widget/l;->e:F

    .line 151
    .line 152
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    iput v2, p0, Landroidx/constraintlayout/widget/l;->e:F

    .line 157
    .line 158
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

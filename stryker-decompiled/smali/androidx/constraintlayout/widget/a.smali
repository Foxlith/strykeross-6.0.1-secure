.class public final Landroidx/constraintlayout/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:F

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/a;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/a;->a:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/constraintlayout/widget/a;->b:I

    iput p1, p0, Landroidx/constraintlayout/widget/a;->b:I

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V
    .locals 16

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/constraintlayout/widget/s;->d:[I

    .line 6
    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    move v6, v3

    .line 20
    move v7, v6

    .line 21
    move v8, v7

    .line 22
    move-object v5, v4

    .line 23
    :goto_0
    if-ge v6, v1, :cond_c

    .line 24
    .line 25
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    const/4 v10, 0x1

    .line 30
    if-nez v9, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_b

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-lez v9, :cond_b

    .line 43
    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_0
    const/16 v11, 0xa

    .line 74
    .line 75
    if-ne v9, v11, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move v8, v10

    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_1
    const/4 v11, 0x6

    .line 85
    if-ne v9, v10, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    move v7, v11

    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_2
    const/4 v12, 0x3

    .line 99
    if-ne v9, v12, :cond_3

    .line 100
    .line 101
    :goto_1
    invoke-virtual {v0, v9, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    :goto_2
    move v7, v12

    .line 110
    goto :goto_5

    .line 111
    :cond_3
    const/4 v12, 0x4

    .line 112
    const/4 v13, 0x2

    .line 113
    if-ne v9, v13, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const/4 v14, 0x7

    .line 117
    const/4 v15, 0x0

    .line 118
    if-ne v9, v14, :cond_5

    .line 119
    .line 120
    invoke-virtual {v0, v9, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-static {v10, v5, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    :goto_3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    move v7, v14

    .line 141
    goto :goto_5

    .line 142
    :cond_5
    if-ne v9, v12, :cond_6

    .line 143
    .line 144
    invoke-virtual {v0, v9, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    const/4 v12, 0x5

    .line 150
    if-ne v9, v12, :cond_7

    .line 151
    .line 152
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 153
    .line 154
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    move v7, v13

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    const/4 v13, -0x1

    .line 165
    if-ne v9, v11, :cond_9

    .line 166
    .line 167
    invoke-virtual {v0, v9, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    :cond_8
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    move v7, v10

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    const/16 v10, 0x9

    .line 178
    .line 179
    if-ne v9, v10, :cond_a

    .line 180
    .line 181
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    goto :goto_2

    .line 186
    :cond_a
    const/16 v10, 0x8

    .line 187
    .line 188
    if-ne v9, v10, :cond_b

    .line 189
    .line 190
    invoke-virtual {v0, v9, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-ne v5, v13, :cond_8

    .line 195
    .line 196
    invoke-virtual {v0, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    goto :goto_4

    .line 201
    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_c
    if-eqz v4, :cond_d

    .line 206
    .line 207
    if-eqz v5, :cond_d

    .line 208
    .line 209
    new-instance v1, Landroidx/constraintlayout/widget/a;

    .line 210
    .line 211
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    iput v7, v1, Landroidx/constraintlayout/widget/a;->b:I

    .line 215
    .line 216
    iput-boolean v8, v1, Landroidx/constraintlayout/widget/a;->a:Z

    .line 217
    .line 218
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/a;->b(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    move-object/from16 v2, p2

    .line 222
    .line 223
    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    .line 228
    .line 229
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/a;->b:I

    invoke-static {v0}, Lo/i;->c(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/a;->d:F

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/a;->f:Z

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/widget/a;->e:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/a;->g:I

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/a;->c:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

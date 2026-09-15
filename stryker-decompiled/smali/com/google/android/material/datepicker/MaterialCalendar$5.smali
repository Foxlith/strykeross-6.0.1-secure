.class Lcom/google/android/material/datepicker/MaterialCalendar$5;
.super Landroidx/recyclerview/widget/s0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final endItem:Ljava/util/Calendar;

.field private final startItem:Ljava/util/Calendar;

.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_6

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lg0/c;

    .line 58
    .line 59
    iget-object v5, v4, Lg0/c;->a:Ljava/lang/Object;

    .line 60
    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    iget-object v4, v4, Lg0/c;->b:Ljava/lang/Object;

    .line 64
    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v6, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    .line 69
    .line 70
    check-cast v5, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 77
    .line 78
    .line 79
    iget-object v5, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    .line 80
    .line 81
    check-cast v4, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    .line 89
    .line 90
    iget-object v4, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    iget-object v6, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    .line 102
    .line 103
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 120
    .line 121
    div-int/2addr v4, v8

    .line 122
    div-int/2addr v5, v8

    .line 123
    move v8, v4

    .line 124
    :goto_1
    if-gt v8, v5, :cond_1

    .line 125
    .line 126
    iget v9, v2, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 127
    .line 128
    mul-int/2addr v9, v8

    .line 129
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    if-nez v9, :cond_3

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 141
    .line 142
    invoke-static {v11}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    iget-object v11, v11, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 147
    .line 148
    invoke-virtual {v11}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    add-int/2addr v10, v11

    .line 153
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 158
    .line 159
    invoke-static {v11}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    iget-object v11, v11, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 164
    .line 165
    invoke-virtual {v11}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    sub-int/2addr v9, v11

    .line 170
    if-ne v8, v4, :cond_4

    .line 171
    .line 172
    if-eqz v6, :cond_4

    .line 173
    .line 174
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    div-int/lit8 v12, v12, 0x2

    .line 183
    .line 184
    add-int/2addr v12, v11

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    const/4 v12, 0x0

    .line 187
    :goto_2
    if-ne v8, v5, :cond_5

    .line 188
    .line 189
    if-eqz v7, :cond_5

    .line 190
    .line 191
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    div-int/lit8 v13, v13, 0x2

    .line 200
    .line 201
    add-int/2addr v13, v11

    .line 202
    goto :goto_3

    .line 203
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    :goto_3
    int-to-float v15, v12

    .line 208
    int-to-float v10, v10

    .line 209
    int-to-float v11, v13

    .line 210
    int-to-float v9, v9

    .line 211
    iget-object v12, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 212
    .line 213
    invoke-static {v12}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    iget-object v12, v12, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    .line 218
    .line 219
    move-object/from16 v14, p1

    .line 220
    .line 221
    move/from16 v16, v10

    .line 222
    .line 223
    move/from16 v17, v11

    .line 224
    .line 225
    move/from16 v18, v9

    .line 226
    .line 227
    move-object/from16 v19, v12

    .line 228
    .line 229
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 230
    .line 231
    .line 232
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_6
    :goto_5
    return-void
.end method

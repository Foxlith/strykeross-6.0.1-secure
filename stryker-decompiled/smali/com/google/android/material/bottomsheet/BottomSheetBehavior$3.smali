.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$shouldHandleGestureInsets:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/q2;
    .locals 10

    .line 1
    iget-object v0, p2, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p2, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 9
    .line 10
    const/16 v2, 0x20

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 17
    .line 18
    iget v3, v0, Lz/f;->b:I

    .line 19
    .line 20
    invoke-static {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 40
    .line 41
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/core/view/q2;->a()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v3, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$502(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 54
    .line 55
    .line 56
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 57
    .line 58
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 59
    .line 60
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    add-int/2addr v3, v6

    .line 65
    :cond_0
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 66
    .line 67
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget v7, v0, Lz/f;->a:I

    .line 72
    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 81
    .line 82
    :goto_0
    add-int/2addr v4, v7

    .line 83
    :cond_2
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 84
    .line 85
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    iget v8, v0, Lz/f;->c:I

    .line 90
    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 99
    .line 100
    :goto_1
    add-int v5, p3, v8

    .line 101
    .line 102
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 109
    .line 110
    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    const/4 v6, 0x1

    .line 115
    const/4 v9, 0x0

    .line 116
    if-eqz v2, :cond_5

    .line 117
    .line 118
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 119
    .line 120
    if-eq v2, v7, :cond_5

    .line 121
    .line 122
    iput v7, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 123
    .line 124
    move v2, v6

    .line 125
    goto :goto_2

    .line 126
    :cond_5
    move v2, v9

    .line 127
    :goto_2
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 128
    .line 129
    invoke-static {v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_6

    .line 134
    .line 135
    iget v7, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 136
    .line 137
    if-eq v7, v8, :cond_6

    .line 138
    .line 139
    iput v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    move v6, v2

    .line 143
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 144
    .line 145
    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 152
    .line 153
    iget v0, v0, Lz/f;->b:I

    .line 154
    .line 155
    if-eq v2, v0, :cond_7

    .line 156
    .line 157
    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    if-eqz v6, :cond_8

    .line 161
    .line 162
    :goto_4
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    invoke-virtual {p1, v4, p3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 170
    .line 171
    .line 172
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    .line 173
    .line 174
    if-eqz p1, :cond_9

    .line 175
    .line 176
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 177
    .line 178
    iget p3, v1, Lz/f;->d:I

    .line 179
    .line 180
    invoke-static {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 181
    .line 182
    .line 183
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_a

    .line 190
    .line 191
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    .line 192
    .line 193
    if-eqz p1, :cond_b

    .line 194
    .line 195
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 196
    .line 197
    invoke-static {p1, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    .line 198
    .line 199
    .line 200
    :cond_b
    return-object p2
.end method

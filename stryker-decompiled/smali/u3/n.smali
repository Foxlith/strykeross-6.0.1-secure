.class public final synthetic Lu3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/logger/LoggerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lu3/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lu3/n;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 4

    .line 1
    iget v0, p0, Lu3/n;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lu3/n;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-boolean v0, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->z:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const v3, 0x7f0a011e

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move p2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    :goto_0
    const/4 v0, 0x0

    .line 36
    iget-object v1, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 37
    .line 38
    if-ne p2, v3, :cond_3

    .line 39
    .line 40
    :cond_2
    :goto_1
    iput-object v0, v1, Lv1/t;->c:Ljava/lang/Object;

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :goto_2
    invoke-virtual {v2}, Lcom/zalexdev/stryker/logger/LoggerFragment;->e()V

    .line 67
    .line 68
    .line 69
    :goto_3
    return-void

    .line 70
    :pswitch_0
    iget-boolean p2, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->z:Z

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_4
    iget-object p2, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 77
    .line 78
    iget-object v0, p2, Lv1/t;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/util/Set;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 83
    .line 84
    .line 85
    const v0, 0x7f0a0116

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iget-object v0, p2, Lv1/t;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Ljava/util/Set;

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_5
    const v0, 0x7f0a011b

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    iget-object v0, p2, Lv1/t;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Ljava/util/Set;

    .line 130
    .line 131
    const/4 v3, 0x2

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_6
    const v0, 0x7f0a0117

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    iget-object v0, p2, Lv1/t;->b:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Ljava/util/Set;

    .line 157
    .line 158
    const/4 v3, 0x3

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_7
    const v0, 0x7f0a0119

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_8

    .line 180
    .line 181
    iget-object p1, p2, Lv1/t;->b:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p1, Ljava/util/Set;

    .line 184
    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    iget-object p1, p2, Lv1/t;->b:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p1, Ljava/util/Set;

    .line 195
    .line 196
    const/4 v0, 0x4

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iget-object p1, p2, Lv1/t;->b:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Ljava/util/Set;

    .line 207
    .line 208
    const/4 p2, 0x5

    .line 209
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :cond_8
    invoke-virtual {v2}, Lcom/zalexdev/stryker/logger/LoggerFragment;->e()V

    .line 217
    .line 218
    .line 219
    :goto_4
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

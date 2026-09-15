.class public Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.super Landroidx/core/view/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 13

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    xor-int/lit8 v7, v6, 0x1

    .line 53
    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    const/4 v9, 0x1

    .line 59
    xor-int/2addr v8, v9

    .line 60
    iget-object v10, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 61
    .line 62
    invoke-virtual {v10}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    xor-int/2addr v10, v9

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    xor-int/2addr v11, v9

    .line 72
    if-nez v11, :cond_2

    .line 73
    .line 74
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-nez v12, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v9, 0x0

    .line 82
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const-string v1, ""

    .line 90
    .line 91
    :goto_2
    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 92
    .line 93
    invoke-static {v8}, Lcom/google/android/material/textfield/TextInputLayout;->access$400(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/StartCompoundLayout;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v8, p2}, Lcom/google/android/material/textfield/StartCompoundLayout;->setupAccessibilityNodeInfo(Lh0/h;)V

    .line 98
    .line 99
    .line 100
    const-string v8, ", "

    .line 101
    .line 102
    if-eqz v7, :cond_4

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Lh0/h;->l(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    if-nez v12, :cond_5

    .line 113
    .line 114
    invoke-virtual {p2, v1}, Lh0/h;->l(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    if-eqz v10, :cond_6

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :goto_3
    invoke-virtual {p2, v3}, Lh0/h;->l(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    if-eqz v3, :cond_6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_a

    .line 151
    .line 152
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .line 154
    const/16 v10, 0x1a

    .line 155
    .line 156
    if-lt v3, v10, :cond_7

    .line 157
    .line 158
    invoke-virtual {p2, v1}, Lh0/h;->j(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_7
    if-eqz v7, :cond_8

    .line 163
    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    :cond_8
    invoke-virtual {p2, v1}, Lh0/h;->l(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    :goto_5
    if-lt v3, v10, :cond_9

    .line 186
    .line 187
    iget-object v1, p2, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 188
    .line 189
    invoke-static {v1, v6}, Lf4/b;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_9
    const/4 v1, 0x4

    .line 194
    invoke-virtual {p2, v1, v6}, Lh0/h;->f(IZ)V

    .line 195
    .line 196
    .line 197
    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ne v0, v4, :cond_b

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_b
    const/4 v4, -0x1

    .line 207
    :goto_7
    iget-object v0, p2, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 208
    .line 209
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p2, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 213
    .line 214
    if-eqz v9, :cond_d

    .line 215
    .line 216
    if-eqz v11, :cond_c

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_c
    move-object v2, v5

    .line 220
    :goto_8
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 224
    .line 225
    invoke-static {v1}, Lcom/google/android/material/textfield/TextInputLayout;->access$500(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/IndicatorViewController;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperTextView()Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-eqz v1, :cond_e

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .line 236
    .line 237
    .line 238
    :cond_e
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 239
    .line 240
    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->access$300(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/textfield/EndIconDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->access$300(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/EndCompoundLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/textfield/EndIconDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

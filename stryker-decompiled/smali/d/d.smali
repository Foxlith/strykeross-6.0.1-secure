.class public Ld/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/b0;
.implements Landroidx/customview/widget/c;
.implements Landroidx/customview/widget/d;
.implements Lw0/j;


# static fields
.field public static b:Ld/d;

.field public static c:Ld/d;

.field public static d:Ld/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Ld/d;->a:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld/d;->a:I

    return-void
.end method

.method public static a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/k0;
    .locals 5

    .line 1
    if-nez p0, :cond_2

    if-nez p1, :cond_0

    new-instance p0, Landroidx/lifecycle/k0;

    invoke-direct {p0}, Landroidx/lifecycle/k0;-><init>()V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key"

    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/k0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/k0;-><init>(Ljava/util/HashMap;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_2
    const-string p1, "keys"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "values"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Landroidx/lifecycle/k0;

    invoke-direct {p0, v0}, Landroidx/lifecycle/k0;-><init>(Ljava/util/HashMap;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid bundle passed as restored state"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    move v0, v2

    .line 23
    move v3, v0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ge v0, v5, :cond_5

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    add-int/lit8 v6, v4, 0x1

    .line 36
    .line 37
    const/16 v7, 0x28

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    if-eq v5, v7, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    if-ne v5, v7, :cond_3

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/16 v7, 0x29

    .line 50
    .line 51
    if-ne v5, v7, :cond_4

    .line 52
    .line 53
    add-int/lit8 v3, v3, -0x1

    .line 54
    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    sub-int/2addr v5, v1

    .line 62
    if-eq v4, v5, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    move v4, v6

    .line 68
    goto :goto_0

    .line 69
    :cond_5
    if-nez v3, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sub-int/2addr v0, v1

    .line 76
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 81
    .line 82
    invoke-static {p0, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    :cond_6
    :goto_2
    return v2
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "tableName"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerType"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`room_table_modification_trigger_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x60

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    .line 1
    sget-object v0, Landroidx/emoji2/text/l;->i:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1a

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_9

    .line 9
    .line 10
    :cond_0
    if-ltz p2, :cond_1a

    .line 11
    .line 12
    if-gez p3, :cond_1

    .line 13
    .line 14
    goto/16 :goto_9

    .line 15
    .line 16
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq v1, v3, :cond_1a

    .line 26
    .line 27
    if-eq v2, v3, :cond_1a

    .line 28
    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    goto/16 :goto_9

    .line 32
    .line 33
    :cond_2
    const/4 v4, 0x1

    .line 34
    if-eqz p4, :cond_17

    .line 35
    .line 36
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    if-ltz v1, :cond_4

    .line 45
    .line 46
    if-ge p4, v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    if-gez p2, :cond_5

    .line 50
    .line 51
    :cond_4
    :goto_0
    move v1, v3

    .line 52
    goto :goto_3

    .line 53
    :cond_5
    :goto_1
    move p4, v0

    .line 54
    :goto_2
    if-nez p2, :cond_6

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    if-gez v1, :cond_8

    .line 60
    .line 61
    if-eqz p4, :cond_7

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_7
    move v1, v0

    .line 65
    goto :goto_3

    .line 66
    :cond_8
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz p4, :cond_a

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-nez p4, :cond_9

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_9
    add-int/lit8 p2, p2, -0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_b

    .line 87
    .line 88
    add-int/lit8 p2, p2, -0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_b
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    if-eqz p4, :cond_c

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_c
    move p4, v4

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-ltz v2, :cond_e

    .line 109
    .line 110
    if-ge p3, v2, :cond_d

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_d
    if-gez p2, :cond_f

    .line 114
    .line 115
    :cond_e
    :goto_4
    move p3, v3

    .line 116
    goto :goto_7

    .line 117
    :cond_f
    :goto_5
    move p4, v0

    .line 118
    :goto_6
    if-nez p2, :cond_10

    .line 119
    .line 120
    move p3, v2

    .line 121
    goto :goto_7

    .line 122
    :cond_10
    if-lt v2, p3, :cond_11

    .line 123
    .line 124
    if-eqz p4, :cond_16

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_11
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz p4, :cond_13

    .line 132
    .line 133
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 134
    .line 135
    .line 136
    move-result p4

    .line 137
    if-nez p4, :cond_12

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_12
    add-int/lit8 p2, p2, -0x1

    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_14

    .line 150
    .line 151
    add-int/lit8 p2, p2, -0x1

    .line 152
    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 157
    .line 158
    .line 159
    move-result p4

    .line 160
    if-eqz p4, :cond_15

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    move p4, v4

    .line 166
    goto :goto_6

    .line 167
    :cond_16
    :goto_7
    if-eq v1, v3, :cond_1a

    .line 168
    .line 169
    if-ne p3, v3, :cond_18

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_17
    sub-int/2addr v1, p2

    .line 173
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    add-int/2addr v2, p3

    .line 178
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 183
    .line 184
    .line 185
    move-result p3

    .line 186
    :cond_18
    const-class p2, Landroidx/emoji2/text/x;

    .line 187
    .line 188
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, [Landroidx/emoji2/text/x;

    .line 193
    .line 194
    if-eqz p2, :cond_1a

    .line 195
    .line 196
    array-length p4, p2

    .line 197
    if-lez p4, :cond_1a

    .line 198
    .line 199
    array-length p4, p2

    .line 200
    move v2, v0

    .line 201
    :goto_8
    if-ge v2, p4, :cond_19

    .line 202
    .line 203
    aget-object v3, p2, v2

    .line 204
    .line 205
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 218
    .line 219
    .line 220
    move-result p3

    .line 221
    add-int/lit8 v2, v2, 0x1

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_19
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 229
    .line 230
    .line 231
    move-result p4

    .line 232
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 233
    .line 234
    .line 235
    move-result p3

    .line 236
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 237
    .line 238
    .line 239
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 240
    .line 241
    .line 242
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 243
    .line 244
    .line 245
    move v0, v4

    .line 246
    :cond_1a
    :goto_9
    return v0
.end method


# virtual methods
.method public final c(Landroidx/appcompat/view/menu/o;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    .line 1
    return-object p1
.end method

.method public e(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 0

    .line 1
    return-object p1
.end method

.method public f(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 1

    .line 1
    const/16 v0, 0x40

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object p1
.end method

.method public i(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/text/Spannable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public m(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final n(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget v0, p0, Ld/d;->a:I

    .line 2
    .line 3
    const v1, 0x7f1304c0

    .line 4
    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroidx/preference/ListPreference;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->l()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->l()Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    return-object p1

    .line 33
    :pswitch_0
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-object p1, v0

    .line 57
    :goto_1
    return-object p1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public o(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public s()V
    .locals 0

    .line 1
    return-void
.end method

.method public t()V
    .locals 0

    .line 1
    return-void
.end method

.method public u(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    .line 1
    return-object p1
.end method
